function generate_paths(worlds)
  for _, world_name in ipairs(worlds) do
    local f_input = io.open(_RANDOVANIA_INPUT_PATH .. world_name .. ".json", "rb")

    if f_input then
      local world = JSON.parse(f_input:read("*a"))

      f_input:close()

      for area_name, area in sorted_pairs(world.areas) do
        for node_name, node in sorted_pairs(area.nodes) do
          if node_name == "Ship" or node.node_type == "teleporter" then
            print("\nPathing:    " .. node_name)
            node.name = node_name
            node.area_name = area_name
            local paths = find_randovania_paths(node, world, {}, {
              [1] = {
                ["node_type"] = node.node_type,
                ["node_string"] = to_snake_case(area_name) .. "__" .. to_snake_case(node_name)
              }
            })

            -- Optimize path
            local optimized_paths = {}

            for path_name, path_options in sorted_pairs(paths) do
              print("Optimizing: " .. path_name)
              local sub_paths = {}

              -- Flatten path options
              for i = 1, #path_options do
                table.insert(sub_paths, {})

                for j = 1, #path_options[i] do
                  table.insert(sub_paths[i], path_options[i][j].node_string)
                end
              end

              -- Get common nodes present in all sub paths
              local common_nodes = sub_paths[1]

              for i = 1, #sub_paths do
                if i ~= 1 then
                  common_nodes = table_similarities(common_nodes, sub_paths[i])
                end
              end

              -- Construct optimized path
              local optimized_path = clone_table(common_nodes)

              for i = 1, #sub_paths do
                local last_common_node_index = 0

                for j = 1, #sub_paths[i] do
                  local node_index = table_has_value(optimized_path, sub_paths[i][j])

                  if node_index ~= 0 then
                    last_common_node_index = node_index
                  else
                    if type(optimized_path[last_common_node_index + 1]) == "table" then
                      if optimized_path[last_common_node_index + 1][i] then
                        table.insert(optimized_path[last_common_node_index + 1][i], sub_paths[i][j])
                      else
                        table.insert(optimized_path[last_common_node_index + 1], {
                          [1] = sub_paths[i][j]
                        })
                      end
                    else
                      table.insert(optimized_path, last_common_node_index + 1, {
                        [i] = {
                          [1] = sub_paths[i][j]
                        }
                      })
                    end
                  end
                end
              end

              -- Optimize path branches
              for i = 1, #optimized_path do
                if type(optimized_path[i]) == "table" then
                  optimized_path[i] = table_uniq(optimized_path[i])
                end
              end

              -- Testing Output
              if path_name == "pth__chozo_ruins__transport_to_tallon_overworld_south__elevator_to_tallon_overworld_transport_to_chozo_ruins_south__to__sunchamber__pickup_artifact_of_wild" then
                print(stringify_table(optimized_path))
              end

              optimized_paths[path_name] = optimized_path
            end

            -- TODO: Change file output to read from optimized_paths

            -- local f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths.lua", "w+b")
            --
            -- if f_output then
            --   f_output:write("")
            --   f_output:close()
            --   f_output = io.open(_RANDOVANIA_OUTPUT_PATH .. to_snake_case(world_name) .. "__" .. to_snake_case(node_name) .. "__paths.lua", "ab")
            --
            --   local str_output = os.date("-- Generated from Randovania " .. world_name .. ".json\n") -- str_output = str_output .. os.date("-- Generated from Randovania " .. world_name .. ".json on %Y/%m/%d at %X\n")
            --
            --   for path_name, optimized_path in sorted_pairs(optimized_paths) do
            --     print("Writing:    " .. path_name)
            --     str_output = str_output .. "function " .. path_name .. "() return"
            --
            --
            --
            --
            --     for i = 1, #path_options do
            --       if i ~= 1 then
            --         str_output = str_output .. " or"
            --       end
            --
            --       str_output = str_output .. " ("
            --
            --       for j = 1, #path_options[i] do
            --         if path_options[i][j + 1] then
            --           if j ~= 1 then
            --             str_output = str_output .. "\n    and"
            --           else
            --             str_output = str_output .. "\n   "
            --           end
            --
            --           str_output = str_output .. " cxn__" .. to_snake_case(world.name) .. "__" .. path_options[i][j].node_string .. "__to__" .. path_options[i][j + 1].node_string .. "()"
            --         end
            --       end
            --
            --       str_output = str_output .. "\n  )"
            --     end
            --
            --     str_output = str_output .. " end\n"
            --     f_output:write(str_output)
            --     str_output = ""
            --   end
            --
            --   f_output:close()
            -- end
          end
        end
      end
    end
  end

  return nil
end
