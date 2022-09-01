_RANDOVANIA_INPUT_PATH = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/randovania/"
_RANDOVANIA_OUTPUT_PATH = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/output/"
_RANDOVANIA_SCHEMA_VERSION = 11

assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/util/parse_json.lua"))()
assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/util/common.lua"))()
assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/common.lua"))()
assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/generate_templates.lua"))()
assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/generate_connections.lua"))()
assert(loadfile(os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/generate_paths.lua"))()

-- generate_templates()
-- generate_connections({
--   "Tallon Overworld",
--   "Chozo Ruins",
--   "Magmoor Caverns",
--   "Phendrana Drifts",
--   "Phazon Mines",
--   "Impact Crater",
-- })
generate_paths({
  -- "Tallon Overworld",
  "Chozo Ruins",
  -- "Magmoor Caverns",
  -- "Phendrana Drifts",
  -- "Phazon Mines",
  -- "Impact Crater",
})
