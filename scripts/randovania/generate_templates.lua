function generate_templates(input, output)
  local f_input = io.open(_RANDOVANIA_INPUT_PATH .. input, "rb")

  if f_input then
    local randovania_json = JSON.parse(f_input:read("*a"))
    local str_output = os.date("-- Generated from Randovania " .. input .. " on %Y/%m/%d at %X\n")

    f_input:close()

    if randovania_json.schema_version ~= _RANDOVANIA_SCHEMA_VERSION then
      return error("Unsupported schema version! Check https://github.com/randovania/randovania/blob/main/randovania/game_description/game_migration.py for compatibility.")
    end

    for key, data in pairs(randovania_json.resource_database.requirement_template) do
      str_output = str_output .. "function tpl_" .. to_snake_case(key) .. "() return " .. convert_randovania_item_to_expression(data) .. "end\n"
    end

    local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. output, "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return str_output
end
