-- local table1 = {{1, 2, 3}, {1, 2, 3}, {1, 2, 3, 4}}
local table1 = {
  [1] = {
    [1] = 'landing_site__door_to_canyon_cavern',
    [2] = 'canyon_cavern__door_to_landing_site',
    [3] = 'canyon_cavern__door_to_tallon_canyon',
    [4] = 'tallon_canyon__door_to_canyon_cavern'
  },
  [3] = {
    [1] = 'landing_site__door_to_canyon_cavern',
    [2] = 'canyon_cavern__door_to_landing_site',
    [3] = 'canyon_cavern__door_to_tallon_canyon',
    [4] = 'tallon_canyon__door_to_canyon_cavern'
  },
  [7] = {
    [1] = 'landing_site__door_to_gully',
    [2] = 'gully__door_to_landing_site',
    [3] = 'gully__door_to_tallon_canyon',
    [4] = 'tallon_canyon__door_to_gully'
  },
  [13] = {
    [1] = 'landing_site__door_to_gully',
    [2] = 'gully__door_to_landing_site',
    [3] = 'gully__door_to_tallon_canyon',
    [4] = 'tallon_canyon__door_to_gully'
  }
}

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

-- print the result
-- for i,v in ipairs(result) do print(stringify_table(v)) end
-- print(stringify_table(table_uniq(table1)))
