function to_snake_case(str)
  return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.lower(str), " - ", "_"), "-", ""), " ", "_"), "%(", ""), "%)", ""), "'", ""), "\"", ""), "__", "_")
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


function clone_table(orig, copies)
  copies = copies or {}

  local orig_type = type(orig)
  local copy

  if orig_type == 'table' then
    if copies[orig] then
      copy = copies[orig]
    else
      copy = {}
      copies[orig] = copy

      for orig_key, orig_value in next, orig, nil do
        copy[clone_table(orig_key, copies)] = clone_table(orig_value, copies)
      end

      setmetatable(copy, clone_table(getmetatable(orig), copies))
    end
  else
    copy = orig
  end

  return copy
end

function table_eq(table1, table2)
   local avoid_loops = {}
   local function recurse(t1, t2)
      -- compare value types
      if type(t1) ~= type(t2) then return false end
      -- Base case: compare simple values
      if type(t1) ~= "table" then return t1 == t2 end
      -- Now, on to tables.
      -- First, let's avoid looping forever.
      if avoid_loops[t1] then return avoid_loops[t1] == t2 end
      avoid_loops[t1] = t2
      -- Copy keys from t2
      local t2keys = {}
      local t2tablekeys = {}
      for k, _ in pairs(t2) do
         if type(k) == "table" then table.insert(t2tablekeys, k) end
         t2keys[k] = true
      end
      -- Let's iterate keys from t1
      for k1, v1 in pairs(t1) do
         local v2 = t2[k1]
         if type(k1) == "table" then
            -- if key is a table, we need to find an equivalent one.
            local ok = false
            for i, tk in ipairs(t2tablekeys) do
               if table_eq(k1, tk) and recurse(v1, t2[tk]) then
                  table.remove(t2tablekeys, i)
                  t2keys[tk] = nil
                  ok = true
                  break
               end
            end
            if not ok then return false end
         else
            -- t1 has a key which t2 doesn't have, fail.
            if v2 == nil then return false end
            t2keys[k1] = nil
            if not recurse(v1, v2) then return false end
         end
      end
      -- if t2 has a key which t1 doesn't have, fail.
      if next(t2keys) then return false end
      return true
   end
   return recurse(table1, table2)
end

function table_similarities(a, b)
  local result = {}

  for i = 1, #a do
    for j = 1, #b do
      if a[i] == b[j] then
        table.insert(result, b[j])
      end
    end
  end

  return result
end

function table_has_value (tbl, v)
  for i = 1, #tbl do
    if tbl[i] == v then
      return i
    end
  end

  return 0
end

function table_uniq(tbl)
  local result = {}
  local seen = {}

  for _, innerTable in pairs(tbl) do
    local serialized = table.concat(innerTable, "\x1f")

    if not seen[serialized] then
      table.insert(result, innerTable)
      seen[serialized] = true
    end
  end

  return result
end
