function generate_randovania_templates(file)
  local path = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/randovania/" .. file

  if file_exists(path) then
    local f_header = io.open(path, "rb")
    local header = JSON.parse(f_header:read("*a"))
    local str_function = os.date("-- Generated from Randovania " .. file .. " on %Y/%m/%d at %X\n")

    f_header:close()

    for template_key, template in pairs(header.resource_database.requirement_template) do
      str_function = str_function .. "function tpl_" .. to_snake_case(template_key) .. "() if " .. convert_randovania_item_to_expression(template) .. "then return true end return false end\n"
    end

    local f_output = io.open(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/output/templates.lua", "w+b")

    f_output:write(str_function)
    f_output:close()
  end

  return nil
end
