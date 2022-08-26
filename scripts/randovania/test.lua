-- function dofile(filename)
--   local f = assert(loadfile(filename))
--   return f()
-- end
require("../util/parse_json.lua")
require("../util/common.lua")
require("./common.lua")
require("./convertTemplates.lua")

-- loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/util/parse_json.lua")
-- loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/util/common.lua")
-- loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/common.lua")
--
-- loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/convertTemplates.lua")()

load_randovania_templates("randovania/header.json")
