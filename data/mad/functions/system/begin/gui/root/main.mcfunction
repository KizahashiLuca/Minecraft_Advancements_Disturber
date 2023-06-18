#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Load add-on
execute if predicate mad:addon run scoreboard players remove #mad LoadAddon 1

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/root/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/root/initial_time] run function mad:system/begin/gui/initial_time/change_to
execute as @p[predicate=mad:system/begin/gui/root/adding_time] run function mad:system/begin/gui/adding_time/change_to
execute as @p[predicate=mad:system/begin/gui/root/minecart_interval] run function mad:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=mad:system/begin/gui/root/gamerules] run function mad:system/begin/gui/gamerules/change_to
execute as @p[predicate=mad:system/begin/gui/root/world_border] run function mad:system/begin/gui/world_border/change_to

execute as @p[predicate=mad:system/begin/gui/root/match_mode] run function mad:system/begin/gui/root/change_match_mode
execute as @p[predicate=mad:system/begin/gui/root/team_match] run function mad:system/begin/gui/team_match/change_to

execute as @p[predicate=mad:system/begin/gui/root/cancel_game] run function mad:system/begin/gui/root/cancel_game
execute as @p[predicate=mad:system/begin/gui/root/start_game] run function mad:system/begin/gui/root/start_game