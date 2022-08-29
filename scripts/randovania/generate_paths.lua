function generate_paths(worlds)
  for _, world_name in ipairs(worlds) do
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")
    -- local teleporter_nodes = {}
    -- local pickup_nodes = {}
    local str_output = ""

    if f_input then
      local world = JSON.parse(f_input:read("*a"))

      -- str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n")
      str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json\n")
      f_input:close()

      for area_name, area in sorted_pairs(world.areas) do
        for node_name, node in sorted_pairs(area.nodes) do
          -- if node_name == "Ship" or node.node_type == "teleporter" then
          if node_name == "Ship" then
            -- teleporter_nodes[node_name] = node


            -- use dock default connections to auto map out paths
            -- keep shortest ones, but if they require tricks, keep others found
            -- store all relevant paths and manually put together locations.lua from that
            node.name = node_name
            node.area_name = area_name
            str_output = str_output .. find_randovania_path(node, world)

            -- if world_name == "Tallon Overworld" then
            --   print(stringify_table(teleporter_nodes))
            --   print(stringify_table(pickup_nodes))
            -- end
          -- elseif node_name ~= "Pickup (Items Every Room)" and node.node_type == "pickup" then
          --   pickup_nodes[node_name] = node
          end
        end
      end

      -- for pickup_node_name, pickup_node in pairs(pickup_nodes) do
        -- for teleporter_node_name, teleporter_node in pairs(teleporter_nodes) do
        --   teleporter_node.name = teleporter_node_name
        --   find_randovania_path(teleporter_node, world)
        -- end
      -- end

      local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "_paths.lua", "w+b")

      if f_output then
        f_output:write(str_output)
        f_output:close()
      end
    end
  end

  return nil
end
