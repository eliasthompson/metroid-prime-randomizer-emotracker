function generate_connections(worlds)
  for _, world_name in ipairs(worlds) do
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")
    local str_output = ""

    if f_input then
      local world = JSON.parse(f_input:read("*a"))

      -- str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n")
      str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json\n")
      f_input:close()

      for area_name, area in sorted_pairs(world.areas) do
        for node_name, node in sorted_pairs(area.nodes) do
          if node.node_type == "dock" then
            str_output = str_output .. "function cxn__" .. to_snake_case(world_name .. "__" .. area_name .. "__" .. node_name .. "__to__" .. node.default_connection.area_name .. "__" .. node.default_connection.node_name) .. "() return dor__" .. to_snake_case(node.default_dock_weakness) .. "() end\n"
          end

          for connection_name, connection in sorted_pairs(node.connections) do
            str_output = str_output .. "function cxn__" .. to_snake_case(world_name .. "__" .. area_name .. "__" .. node_name .. "__to__" .. area_name .. "__" .. connection_name) .. "() return " .. convert_randovania_item_to_expression(connection) .. "end\n"
          end
        end
      end

      local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "_connections.lua", "w+b")

      if f_output then
        f_output:write(str_output)
        f_output:close()
      end
    end
  end

  return nil
end
