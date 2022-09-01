function generate_paths(worlds)
  for _, world_name in ipairs(worlds) do
    print("\nWorld:    " .. world_name)
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")

    if f_input then
      local world = JSON.parse(f_input:read("*a"))

      f_input:close()

      for area_name, area in sorted_pairs(world.areas) do
        for node_name, node in sorted_pairs(area.nodes) do
          -- if node_name == "Ship" or node.node_type == "teleporter" then
          if node_name == "Elevator to Tallon Overworld - Transport to Chozo Ruins South" then
            print("Pathing:  pth__" .. to_snake_case(world_name) .. "__" .. to_snake_case(area_name) .. "__" .. to_snake_case(node_name))
            node.name = node_name
            node.area_name = area_name
            local paths = find_randovania_paths(node, world, {}, {
              [1] = {
                ["node_type"] = node.node_type,
                ["node_string"] = to_snake_case(area_name) .. "__" .. to_snake_case(node_name)
              }
            })

            -- Build path
            local output_paths = {}

            for path_name, path_options in sorted_pairs(paths) do
              print("Building: " .. path_name)
              local sub_paths = {}

              -- Flatten path options
              for i = 1, #path_options do
                table.insert(sub_paths, {})

                for j = 1, #path_options[i] do
                  table.insert(sub_paths[i], path_options[i][j].node_string)
                end
              end

              -- print(stringify_table(sub_paths))

              output_paths[path_name] = optimize_paths(sub_paths)

              -- Testing Output
              -- local test_path = "pth__tallon_overworld__landing_site__ship__to__transport_to_magmoor_caverns_east__elevator_to_magmoor_caverns_transport_to_tallon_overworld_west"
              local test_path = "pth__chozo_ruins__transport_to_tallon_overworld_south__elevator_to_tallon_overworld_transport_to_chozo_ruins_south__to__sunchamber__pickup_artifact_of_wild"

              if path_name == test_path then
                local f_test = io.open(_RANDOVANIA_OUTPUT_PATH .. "test_path.lua", "w+b")

                if f_test then
                  f_test:write("local " .. test_path .. " = " .. stringify_table(output_paths[path_name]))
                  f_test:close()
                end
              end
            end

            local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths.lua", "w+b")

            if f_output then
              f_output:write("")
              f_output:close()
              f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths.lua", "ab")

              local str_output = os.date("-- Generated from Randovania " .. world_name .. ".json\n") -- str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n")
              local function cxn(node1, node2)
                return "cxn__" .. to_snake_case(world.name) .. "__" .. node1 .. "__to__" .. node2 .. "()"
              end

              for path_name, output_path in sorted_pairs(output_paths) do
                print("Writing:  " .. path_name)
                str_output = str_output .. "function " .. path_name .. "() return"

                for i = 1, (#output_path - 1) do
                  if type(output_path[i]) == "string" then
                    if i ~= 1 then
                      str_output = str_output .. "\n  and"
                    else
                      str_output = str_output .. "\n "
                    end

                    if type(output_path[i + 1]) == "string" then
                      str_output = str_output .. " " .. cxn(output_path[i], output_path[i + 1])
                    elseif type(output_path[i + 1]) == "table" then
                      str_output = str_output .. " " .. cxn(output_path[i], output_path[i + 1][1][1])
                    end
                  elseif type(output_path[i]) == "table" then
                    if i ~= 1 then
                      str_output = str_output .. "\n  and"
                    end

                    str_output = str_output .. "\n  (\n   "

                    for j = 1, #output_path[i] do
                      if j ~= 1 then
                        str_output = str_output .. " or"
                      end

                      str_output = str_output .. " ("

                      for k = 1, #output_path[i][j] do
                        if k ~= 1 then
                          str_output = str_output .. "\n      and"
                        else
                          str_output = str_output .. "\n     "
                        end

                        if output_path[i][j][k + 1] ~= nil then
                          str_output = str_output .. " " .. cxn(output_path[i][j][k], output_path[i][j][k + 1])
                        else
                          if type(output_path[i + 1]) == "string" then
                            str_output = str_output .. " " .. cxn(output_path[i][j][k], output_path[i + 1])
                          elseif type(output_path[i + 1]) == "table" then
                            str_output = str_output .. " " .. cxn(output_path[i][j][k], output_path[i + 1][1][1])
                          end
                        end
                      end

                      str_output = str_output .. "\n    )"
                    end

                    str_output = str_output .. "\n  )"
                  end
                end

                str_output = str_output .. "\nend\n\n"
                if path_name == "pth__chozo_ruins__transport_to_tallon_overworld_south__elevator_to_tallon_overworld_transport_to_chozo_ruins_south__to__sunchamber__pickup_artifact_of_wild" then
                  f_output:write(str_output)
                end
                -- f_output:write(str_output)
                str_output = ""
              end

              f_output:close()
            end
          end
        end
      end
    end
  end

  return nil
end
