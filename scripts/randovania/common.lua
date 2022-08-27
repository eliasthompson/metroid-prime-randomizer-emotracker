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
    str_output = str_output .. "tpl_" .. to_snake_case(item.data) .. "() "
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

-- function convert_randovania_logic_to_function(tbl, prefix, sub_path)
--   local function_prefix = prefix or ""
--   local str_output = ""
--
--   for key, data in pairs(tbl) do
--     local item = sub_path and parse_table_path(data, sub_path) or data
--
--     str_output = str_output .. "function " .. function_prefix .. to_snake_case(key) .. "() if " .. convert_randovania_item_to_expression(item) .. "then return true end return false end\n"
--   end
--
--   return str_output
-- end