function generate_paths(worlds)
  for _, world_name in ipairs(worlds) do
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")
    local teleporters = {}
    local pickups = {}

    if f_input then
      local world = JSON.parse(f_input:read("*a"))
      local str_output = os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n")

      f_input:close()

      for area_name, area in pairs(world.areas) do
        for node_name, node in pairs(area.nodes) do
          if node_name == "Ship" or node.node_type == "teleporter" then
            teleporters[node_name] = node
          elseif node_name ~= "Pickup (Items Every Room)" and node.node_type == "pickup" then
            pickups[node_name] = node
          end

          -- use dock default connections to auto map out paths
          -- keep shortest ones, but if they require tricks, keep others found
          -- store all relevant paths and manually put together locations.lua from that

          -- for connection_name, connection in pairs(node.connections) do
          --   str_output = str_output .. "function cxn__" .. to_snake_case(world_name .. "__" .. area_name .. "__" .. node_name .. "__to__" .. connection_name) .. "() return " .. convert_randovania_item_to_expression(connection) .. "end\n"
          -- end
        end
      end

      -- local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "_paths.lua", "w+b")

      -- if f_output then
      --   f_output:write(str_output)
      --   f_output:close()
      -- end

      print(world_name)
      print(stringify_table(teleporters))
      print(stringify_table(pickups))
    end
  end

  return nil
  -- return str_output
end
