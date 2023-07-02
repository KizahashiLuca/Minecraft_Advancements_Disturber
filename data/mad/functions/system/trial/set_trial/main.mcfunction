#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerules
execute in minecraft:overworld run function mad:system/trial/set_trial/set_gamerules
execute in minecraft:the_nether run function mad:system/trial/set_trial/set_gamerules
execute in minecraft:the_end run function mad:system/trial/set_trial/set_gamerules

## Set world
function mad:system/game/set_game/set_world

## Set tags
function mad:system/trial/set_trial/set_tags

## Set players
gamemode adventure @a[predicate=mad:player/participant]

## Set players
function mad:system/begin/set_game/set_teams

## Set players
function mad:system/trial/set_trial/set_players

## Set scoreboards
function mad:system/begin/set_game/add_scoreboards
function mad:system/begin/set_game/set_scoreboards
function mad:system/game/set_game/set_scoreboards

## Set random seed
function mad:system/common/randomizer/initialize

## Set world
function mad:system/begin/set_game/set_world

## Detect version
function mad:system/begin/set_game/detect_version

## Send messages
execute if predicate mad:version/accept run function mad:system/trial/set_trial/send_messages
execute if predicate mad:version/error run function mad:system/finish/version_error/main