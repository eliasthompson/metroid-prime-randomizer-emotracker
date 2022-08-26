function convert_randovania_item_to_expression(item, item_index, parent_item)
  local str_function = ""

  if item.type == "and" or item.type == "or" then
    if items_length ~= 0 then
      str_function = str_function .. "( "

      for i, data in ipairs(item.data.items) do
        str_function = str_function .. convert_randovania_item_to_expression(data, i, item)
      end

      str_function = str_function .. ") "
    end
  elseif item.type == "template" then
    str_function = str_function .. "tpl_" .. to_snake_case(item.data) .. "() "
  elseif item.type == "resource" then
    local op = item.data.negate and "==" or ">"
    local code = item.data.type == "tricks" and "setting_trick_" .. string.lower(item.data.name) .. tostring(item.data.amount) or string.lower(item.data.name)
    str_function = str_function .. "Tracker:ProviderCountForCode(\"" .. code .. "\") " .. op .. " 0 "
  end

  if (item_index and parent_item.data.items[item_index + 1] and parent_item.data.items[item_index + 1].type) then
    str_function = str_function .. parent_item.type .. " "
  end

  return str_function
end
