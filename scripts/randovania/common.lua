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
