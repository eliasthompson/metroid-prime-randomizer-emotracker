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

function find_randovania_path(node, world, node_history)
  local str_output = ""
  local connections = node.connections

  if node.node_type == "dock" then
    connections[node.default_connection.node_name] = { ["area_name"] = node.default_connection.area_name }
  end

  for connection_name, connection in sorted_pairs(connections) do
    local area_name = connection.area_name or node.area_name
    local connection_node = world.areas[area_name].nodes[connection_name]
    local history = node_history or {}
    local is_repeat_node = false

    for i = 1, #history do
      if not is_repeat_node and history[i].node_string == to_snake_case(area_name .. "__" .. connection_name) then
        is_repeat_node = true
      end
    end

    if not is_repeat_node then
      print(node.name .. " > " .. connection_name)

      table.insert(history, {
        ["node_type"] = node.node_type,
        ["node_string"] = to_snake_case(node.area_name .. "__" .. node.name)
      })
      connection_node.name = connection_name
      connection_node.area_name = area_name
      str_output = str_output .. find_randovania_path(connection_node, world, history)
    end

    -- TODO:
    -- Bugfix: HOW!?! cxn__tallon_overworld__transport_to_magmoor_caverns_east__door_to_transport_tunnel_b__to__root_cave__door_to_root_tunnel
    -- Spot check connection chains
    -- Combine duplicate functions into ors somehow

    if connection_name ~= "Pickup (Items Every Room)" and connection_node.node_type == "pickup" then
      print("pth__" .. to_snake_case(world.name) .. "__" .. history[1].node_string .. "__to__" .. to_snake_case(node.area_name .. "__" .. connection_name))
      -- print(stringify_table(history))

      str_output = str_output .. "function pth__" .. to_snake_case(world.name) .. "__" .. history[1].node_string .. "__to__" .. to_snake_case(node.area_name .. "__" .. connection_name) .. "()\n  return"

      for i = 1, #history do
        local next_node = history[i + 1] and history[i + 1].node_string or to_snake_case(node.area_name .. "__" .. connection_name)

        if i ~= 1 then
          str_output = str_output .. "\n    and"
        end

        str_output = str_output .. " cxn__" .. to_snake_case(world.name) .. "__" .. history[i].node_string .. "__to__" .. next_node .. "()"
      end

      str_output = str_output .. "\nend\n\n"
    end
  end

  return str_output
end
