function convert_randovania_item_to_expression(item, item_index, parent_item)
  local str_output = ""

  if item.type == "and" or item.type == "or" then
    if items_length ~= 0 then
      str_output = str_output .. "( "

      for i, data in ipairs(item.data.items) do
        str_output = str_output .. convert_randovania_item_to_expression(data, i, item)
      end

      if table_length(item.data.items) == 0 then
        if item.type == "and" then
          str_output = str_output .. "true "
        else
          str_output = str_output .. "false "
        end
      end

      str_output = str_output .. ") "
    end
  elseif item.type == "template" then
    str_output = str_output .. "tpl__" .. to_snake_case(item.data) .. "() "
  elseif item.type == "resource" then
    local op = item.data.negate and "==" or ">"
    local code = item.data.type == "tricks" and "setting_trick_" .. to_snake_case(item.data.name) .. tostring(item.data.amount) or to_snake_case(item.data.name)

    str_output = str_output .. "Tracker:ProviderCountForCode(\"" .. code .. "\") " .. op .. " 0 "
  end

  if (item_index and parent_item.data.items[item_index + 1] and parent_item.data.items[item_index + 1].type) then
    str_output = str_output .. parent_item.type .. " "
  end

  return str_output
end

function find_randovania_paths(node, world, paths, node_history)
  local connections = node.connections

  if node.node_type == "dock" then
    connections[node.default_connection.node_name] = { ["area_name"] = node.default_connection.area_name }
  end

  for connection_name, connection in sorted_pairs(connections) do
    local area_name = connection.area_name or node.area_name
    local connection_node = world.areas[area_name].nodes[connection_name]
    local history = clone_table(node_history)
    local is_repeat_node = false

    for i = 1, #history do
      if not is_repeat_node and history[i].node_string == to_snake_case(area_name) .. "__" .. to_snake_case(connection_name) then
        is_repeat_node = true
      end
    end

    if not is_repeat_node then
      connection_node.name = connection_name
      connection_node.area_name = area_name

      table.insert(history, {
        ["node_type"] = connection_node.node_type,
        ["node_string"] = to_snake_case(area_name) .. "__" .. to_snake_case(connection_name)
      })

      paths = find_randovania_paths(connection_node, world, paths, history)

      if connection_name ~= "Pickup (Items Every Room)" and (connection_node.node_type == "pickup" or connection_node.node_type == "teleporter") then -- and connection_name == "Pickup (Space Jump Boots)" then
        local path_name = "pth__" .. to_snake_case(world.name) .. "__" .. history[1].node_string .. "__to__" .. to_snake_case(node.area_name) .. "__" .. to_snake_case(connection_name)
        local new_path = true

        for name in pairs(paths) do
          if new_path and name == path_name then
            new_path = false
          end
        end

        if new_path then
          paths[path_name] = {
            [1] = history
          }
        else
          table.insert(paths[path_name], history)
        end
      end
    end
  end

  return paths
end

function optimize_paths(sub_paths, stop)
  -- Get common nodes present in all sub paths
  local common_nodes = sub_paths[1]

  for i = 1, #sub_paths do
    if i ~= 1 then
      common_nodes = table_similarities(common_nodes, sub_paths[i])
    end
  end

  -- Construct optimized path
  local optimized_path = clone_table(common_nodes)

  for i = 1, #sub_paths do
    local last_common_node_index = 0

    for j = 1, #sub_paths[i] do
      local node_index = table_has_value(optimized_path, sub_paths[i][j])

      if node_index ~= 0 then
        last_common_node_index = node_index
      else
        if type(optimized_path[last_common_node_index + 1]) == "table" then
          if optimized_path[last_common_node_index + 1][i] then
            table.insert(optimized_path[last_common_node_index + 1][i], sub_paths[i][j])
          else
            table.insert(optimized_path[last_common_node_index + 1], {
              [1] = sub_paths[i][j]
            })
          end
        else
          table.insert(optimized_path, last_common_node_index + 1, {
            [i] = {
              [1] = sub_paths[i][j]
            }
          })
        end
      end
    end
  end

  -- Optimize path branches
  for i = 1, #optimized_path do
    if type(optimized_path[i]) == "table" then
      optimized_path[i] = table_uniq(optimized_path[i])
    end
  end

  -- Shift branch starting nodes into branches for output
  local output_path = {}

  for i = 1, #optimized_path do
    if type(optimized_path[i]) ~= "table" and type(optimized_path[i + 1]) ~= "table" then
      table.insert(output_path, optimized_path[i])
    elseif type(optimized_path[i]) == "table" then
      local branches = clone_table(optimized_path[i])

      for j = 1, #optimized_path[i] do
        table.insert(branches[j], 1, optimized_path[i - 1])
      end

      if #optimized_path[i] == 1 then
        table.insert(branches, 1, {
          [1] = optimized_path[i - 1]
        })
      end

      table.insert(output_path, branches)
    end
  end

  -- print(stringify_table(common_nodes))
  -- print(stringify_table(optimized_path))

  -- Optimize sub paths
  if #common_nodes ~= 0 and not table_eq(common_nodes, output_path) then
    for i = 1, #output_path do
      if type(output_path[i]) == "table" then
        -- print(#output_path[i])
        -- print(table_eq(common_nodes, output_path))
        if stop ~= true then output_path[i] = optimize_paths(output_path[i]) end
      end
    end
  end

  return output_path
end
