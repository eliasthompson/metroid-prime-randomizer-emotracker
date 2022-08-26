function to_snake_case(str)
  return string.gsub(string.gsub(string.lower(str), " ", "_"), "-", "")
end

function table_length(tbl)
  i = 0

  for _ in pairs(tbl) do
    i = i + 1
  end

  return i
end

function file_exists(file)
  local f_file = io.open(file, "rb")

  if f_file then
    f_file:close()
  end

  return f_file ~= nil
end
