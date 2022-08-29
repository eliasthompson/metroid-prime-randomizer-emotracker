function to_snake_case(str)
  return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.lower(str), " - ", " "), "-", ""), " ", "_"), "%(", ""), "%)", ""), "'", ""), "\"", "")
end

function table_length(tbl)
  local count = 0

  for _ in pairs(tbl) do
    count = count + 1
  end

  return count
end

function str_split(str, sep)
  local tbl = {}
  local i = 1

  for str in string.gmatch(str, "([^".. sep .."]+)") do
    tbl[i] = str
    i = i + 1
  end

  return tbl
end

function parse_table_path(tbl, path)
  local value
  local keys = str_split(path, ".")

  for _, key in pairs(keys) do
    value = (value and value[key]) or tbl[key]
  end

  return value
end

function stringify_table(node)
  local cache, stack, output = {}, {}, {}
  local depth = 1
  local output_str = "{\n"

  while true do
    local size = 0
    for k, v in pairs(node) do
      size = size + 1
    end

    local cur_index = 1
    for k, v in pairs(node) do
      if (cache[node] == nil) or (cur_index >= cache[node]) then

        if (string.find(output_str, "}", output_str:len())) then
          output_str = output_str .. ",\n"
        elseif not (string.find(output_str, "\n", output_str:len())) then
          output_str = output_str .. "\n"
        end

        -- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
        table.insert(output, output_str)
        output_str = ""

        local key
        if (type(k) == "number" or type(k) == "boolean") then
          key = "["..tostring(k).."]"
        else
          key = "['"..tostring(k).."']"
        end

        if (type(v) == "number" or type(v) == "boolean") then
          output_str = output_str .. string.rep('\t', depth) .. key .. " = "..tostring(v)
        elseif (type(v) == "table") then
          output_str = output_str .. string.rep('\t', depth) .. key .. " = {\n"
          table.insert(stack, node)
          table.insert(stack, v)
          cache[node] = cur_index + 1
          break
        else
          output_str = output_str .. string.rep('\t', depth) .. key .. " = '"..tostring(v).."'"
        end

        if (cur_index == size) then
          output_str = output_str .. "\n" .. string.rep('\t', depth - 1) .. "}"
        else
          output_str = output_str .. ","
        end
      else
        -- close the table
        if (cur_index == size) then
          output_str = output_str .. "\n" .. string.rep('\t', depth - 1) .. "}"
        end
      end

      cur_index = cur_index + 1
    end

    if (size == 0) then
      output_str = output_str .. "\n" .. string.rep('\t', depth - 1) .. "}"
    end

    if (#stack > 0) then
      node = stack[#stack]
      stack[#stack] = nil
      depth = cache[node] == nil and depth + 1 or depth - 1
    else
      break
    end
  end

  -- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
  table.insert(output, output_str)
  output_str = table.concat(output)

  return output_str
end

function __genOrderedIndex( t )
  local orderedIndex = {}

  for key in pairs(t) do
    table.insert(orderedIndex, key)
  end

  table.sort(orderedIndex)

  return orderedIndex
end

function orderedNext(t, state)
  local key = nil

  if state == nil then
    t.__orderedIndex = __genOrderedIndex( t )
    key = t.__orderedIndex[1]
  else
    for i = 1, #t.__orderedIndex do
      if t.__orderedIndex[i] == state then
        key = t.__orderedIndex[i + 1]
      end
    end
  end

  if key then
    return key, t[key]
  end

  t.__orderedIndex = nil
  return
end

function sorted_pairs(t)
  return orderedNext, t, nil
end
