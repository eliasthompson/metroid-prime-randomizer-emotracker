function generate_doors(input, output)
  local f_input = io.open(randovania_input_path .. input, "rb")

  if f_input then
    local randovania_json = JSON.parse(f_input:read("*a"))
    local str_output = os.date("-- Generated from Randovania " .. input .. " on %Y/%m/%d at %X\n")

    f_input:close()

    for _, types in pairs(randovania_json.dock_weakness_database.types) do
      for key, data in pairs(types.items) do
        local item = {
          ["type"] = "and",
          ["data"] = {
            ["items"] = {
              [1] = data.requirement,
              [2] = data.lock.requirement,
            }
          }
        }

        if data.lock.requirement == nil then
          item = data.requirement
        end

        local str_function = "function dor_" .. to_snake_case(key) .. "() if " .. convert_randovania_item_to_expression(item) .. "then return true end return false end\n"

        -- Permanently Locked Exception
        if key == 'Permanently Locked' then
          str_function = string.gsub(str_function, "%( true %) and %( true %)", "false")
        end

        str_output = str_output .. str_function
      end
    end

    local f_output = io.open(randovania_output_path .. output, "w+b")

    if f_output then
      f_output:write(str_output)
      f_output:close()
    end
  end

  return str_output
end
