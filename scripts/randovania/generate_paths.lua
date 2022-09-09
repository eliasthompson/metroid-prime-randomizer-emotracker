function generate_paths(worlds)

  for _, world_name in ipairs(worlds) do
    print("\nWorld:     " .. world_name)
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")

    if f_input then
      local world = JSON.parse(f_input:read("*a"))

      f_input:close()

      for area_name, area in sorted_pairs(world.areas) do
        for node_name, node in sorted_pairs(area.nodes) do
          -- if node_name == "Ship" or node.node_type == "teleporter" then
          if node_name == "Elevator to Tallon Overworld - Transport to Chozo Ruins South" then
            print("Pathing:   pth__" .. to_snake_case(world_name) .. "__" .. to_snake_case(area_name) .. "__" .. to_snake_case(node_name))
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
              print("Building:  " .. path_name)
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
              -- local test_path = "pth__phendrana_drifts__transport_to_magmoor_caverns_south__elevator_transport_to_phendrana_drifts_south__to__frost_cave__pickup_missile"
              local test_path = "pth__chozo_ruins__transport_to_tallon_overworld_south__elevator_to_tallon_overworld_transport_to_chozo_ruins_south__to__crossway__pickup_missile_expansion"

              if path_name == test_path then
                local f_test = io.open(_RANDOVANIA_OUTPUT_PATH .. "test_path.lua", "w+b")

                if f_test then
                  f_test:write("local " .. test_path .. " = " .. stringify_table(output_paths[path_name]))
                  f_test:close()
                end
              end
            end

            local file_count = 1
            local last_file_count = 0

            for path_name, output_path in sorted_pairs(output_paths) do
              local str_output = "function " .. path_name .. "() return" .. generate_control_structure(output_path, world_name, 2) .. "\nend\n\n"
              local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths__" .. file_count .. ".lua", "ab")

              if f_output then
                if (f_output:seek("end") + str_output:len()) > 5242880 and f_output:seek("end") ~= 0 then
                  file_count = file_count + 1
                end

                f_output:close()
                f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths__" .. file_count .. ".lua", "ab")

                if f_output then
                  if file_count ~= last_file_count then
                    print("Writing:   pth__" .. to_snake_case(world_name) .. "__" .. to_snake_case(area_name) .. "__" .. to_snake_case(node_name) .. "__" .. file_count)
                    f_output:write(os.date("-- Generated from Randovania " .. world_name .. ".json\n")) -- str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n"))
                  end

                  f_output:write(str_output)
                  print("Appending: " .. path_name .. " (Size: " .. f_output:seek("end") .. ")")
                  str_output = ""
                  f_output:close()
                end
              end

              last_file_count = file_count
            end
          end
        end
      end
    end
  end

  return nil
end
