function generate_templates(input, output)
  local f_input = io.open(randovania_input_path .. input, "rb")

  if f_input then
    local randovania_json = JSON.parse(f_input:read("*a"))
    local str_output = os.date("-- Generated from Randovania " .. input .. " on %Y/%m/%d at %X\n")

    f_input:close()

    for key, data in pairs(randovania_json.resource_database.requirement_template) do
      str_output = str_output .. "function tpl_" .. to_snake_case(key) .. "() if " .. convert_randovania_item_to_expression(data) .. "then return true end return false end\n"
    end

    local f_output = io.open(randovania_output_path .. output, "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return str_output
end
