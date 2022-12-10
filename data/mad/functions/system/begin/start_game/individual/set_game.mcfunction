#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset world
execute in minecraft:overworld run function mad:system/finish/reset_game/reset_gamerules
execute in minecraft:the_nether run function mad:system/finish/reset_game/reset_gamerules
execute in minecraft:the_end run function mad:system/finish/reset_game/reset_gamerules

## Reset world
function mad:system/finish/reset_game/reset_world

## Reset players
function mad:system/finish/reset_game/reset_players

## Remove tags
function mad:system/finish/reset_game/remove_tags

## Remove teams
function mad:system/finish/reset_game/remove_teams

## Remove bossbars
function mad:system/finish/reset_game/remove_bossbars

## Remove scoreboards
function mad:system/finish/reset_game/reset_scoreboards
function mad:system/finish/reset_game/reset_advancements_scoreboards

## Set gamerules
execute in minecraft:overworld run function mad:system/begin/set_game/set_gamerules
execute in minecraft:the_nether run function mad:system/begin/set_game/set_gamerules
execute in minecraft:the_end run function mad:system/begin/set_game/set_gamerules

## Set players
function mad:system/begin/set_game/set_players

## Set tags
function mad:system/begin/set_game/set_tags

## Set teams
function mad:system/begin/set_game/set_teams

## Add scoreboards
function mad:system/begin/set_game/add_scoreboards
function mad:system/begin/set_game/set_scoreboards
function mad:system/begin/set_game/add_advancements_scoreboards
function mad:system/begin/set_game/set_advancements_scoreboards

## Set world
function mad:system/begin/set_game/set_world

## Set bossbars
function mad:system/begin/set_game/set_bossbars

## Set random seed
function mad:system/common/randomizer/initialize

## Detect version
function mad:system/begin/set_game/detect_version

## Count players
function mad:system/begin/set_game/count_players

## Send messages
execute if predicate mad:system/begin/set_game/accept_condition run function mad:system/wait/change_to
execute if predicate mad:system/begin/set_game/version_error run function mad:system/finish/version_error/main
execute if predicate mad:system/begin/set_game/number_of_participants_error run function mad:system/finish/number_of_participants_error/main