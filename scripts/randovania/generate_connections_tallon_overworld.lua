function generate_connections_tallon_overworld(input, output)
  local f_input = io.open(_RANDOVANIA_INPUT_PATH .. input, "rb")

  if f_input then
    local randovania_json = JSON.parse(f_input:read("*a"))
    local str_output = os.date("-- Generated from Randovania " .. input .. " on %Y/%m/%d at %X\n")

    f_input:close()

    local area_name = randovania_json.name

    for room_name, room in pairs(randovania_json.areas) do
      for node_name, node in pairs(room.nodes) do
        if node.node_type == "dock" then
          str_output = str_output .. "function doc_" .. to_snake_case(area_name .. "_" .. room_name .. "_" .. node_name) .. "() return dor_" .. to_snake_case(node.default_dock_weakness) .. "() end\n"
        end

        for connection_name, connection in pairs(node.connections) do
          str_output = str_output .. "function cxn_" .. to_snake_case(area_name .. "_" .. room_name .. "_" .. node_name .. "_to_" .. connection_name) .. "() return " .. convert_randovania_item_to_expression(connection) .. "end\n"
        end
      end
    end

    local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. output, "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return str_output
end
