# Metroid Prime Randomizer Tracker

A Metroid Prime Randomizer tracker for use with Metroid Prime randomizers generated through [Randovania](https://github.com/randovania/randovania). It is currently only an item tracker with two variants—the square-ish default Item Tracker and the more elongated Item Tracker (Skinny). Map tracking and (with some luck) autotracking is planned for a future date.

## Go Mode Indicator
This tracker includes an automatic Go Mode Indicator (Samus' Ship) which will toggle on or off depending on if you are in go mode. It currently does not take trick logic into account, but does rely on two settings configurable by you—the total number of artifacts required to beat the game (Default: 6), and whether or not you are skipping Impact Crater. This may eventually be updated to let you put in your trick levels, but this is a low priority.

## Broadcast View
Broadcast view works as expected, but by default shows the horizontal tracker orientation. To show the vertical orientation, you'll need to create a user override:
1. In EmoTracker settings, go to `Advanced > Open Override Folder`.
2. Create a `layouts` folder.
3. Navigate up until you see the EmoTracker `packs` folder. Go inside and into the `metroid_prime_randomizer_emotracker_eliasthompson.zip` pack and copy `layouts/trackers.json` into the `layouts` folder that you created in Step 2.
4. Modify the `key` value on Line 7 of your copied `trackers.json` file to be `tracker_shared_vertical`.
5. Save the file and reload EmoTracker.

## Disclaimer
I maintain this in my free time and usually prioritize features and QoL tweaks that I or others I see using the tracker would like to see. Feel free to submit pull requests, but know that the review period will likely be slow.
