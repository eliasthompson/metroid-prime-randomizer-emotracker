function generate_templates()
  local f_input = io.open(_RANDOVANIA_INPUT_PATH .. "header.json", "rb")
  local str_output = ""

  if f_input then
    local header = JSON.parse(f_input:read("*a"))

    -- str_output = str_output .. os.date("-- Generated from Randovania header.json on %Y/%m/%d at %X\n")
    str_output = str_output .. os.date("-- Generated from Randovania header.json\n")
    f_input:close()

    if header.schema_version ~= _RANDOVANIA_SCHEMA_VERSION then
      return error("Unsupported schema version! Check https://github.com/randovania/randovania/blob/main/randovania/game_description/game_migration.py for compatibility.")
    end

    for template_name, template in sorted_pairs(header.resource_database.requirement_template) do
      str_output = str_output .. "function tpl__" .. to_snake_case(template_name) .. "() return " .. convert_randovania_item_to_expression(template) .. "end\n"
    end

    for _, door_type in sorted_pairs(header.dock_weakness_database.types) do
      for door_name, door in sorted_pairs(door_type.items) do
        local new_door = {
          ["type"] = "and",
          ["data"] = {
            ["items"] = {
              [1] = door.requirement,
              [2] = door.lock.requirement
            }
          }
        }

        if door.lock.requirement == nil then
          new_door = door.requirement
        end

        local str_function = "function dor__" .. to_snake_case(door_name) .. "() return " .. convert_randovania_item_to_expression(new_door) .. "end\n"

        -- Permanently Locked Exception
        if door_name == 'Permanently Locked' then
          str_function = string.gsub(str_function, "%( true %) and %( true %)", "%( false %)")
        end

        str_output = str_output .. str_function
      end
    end

    local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. "templates.lua", "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return nil
end
