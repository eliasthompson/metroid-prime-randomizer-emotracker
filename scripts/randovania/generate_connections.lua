function generate_connections(world)
  local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world .. ".json", "rb")

  if f_input then
    local randovania_json = JSON.parse(f_input:read("*a"))
    local str_output = os.date("-- Generated from Randovania " .. world .. ".json on %Y/%m/%d at %X\n")

    f_input:close()

    local area_name = randovania_json.name

    for room_name, room in pairs(randovania_json.areas) do
      for node_name, node in pairs(room.nodes) do
        if node.node_type == "dock" then
          str_output = str_output .. "function doc__" .. to_snake_case(area_name .. "__" .. room_name .. "__" .. node_name) .. "() return dor__" .. to_snake_case(node.default_dock_weakness) .. "() end\n"
        end

        for connection_name, connection in pairs(node.connections) do
          str_output = str_output .. "function cxn__" .. to_snake_case(area_name .. "__" .. room_name .. "__" .. node_name .. "__to__" .. connection_name) .. "() return " .. convert_randovania_item_to_expression(connection) .. "end\n"
        end
      end
    end

    local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world) .. "_connections.lua", "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return str_output
end
