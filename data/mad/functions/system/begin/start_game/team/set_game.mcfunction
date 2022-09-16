#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
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

## Set scoreboards
scoreboard players set #mad IsTeam 1
scoreboard players set #mad NumberOfTeams 2
scoreboard players set #mad WorldBorder 1500

## Send messages
execute if predicate mad:system/begin/set_game/accept_condition run function mad:system/begin/team_member/set_member_randomly
execute if predicate mad:system/begin/set_game/version_error run function mad:system/finish/version_error/main
execute if predicate mad:system/begin/set_game/number_of_participants_error run function mad:system/finish/number_of_participants_error/main