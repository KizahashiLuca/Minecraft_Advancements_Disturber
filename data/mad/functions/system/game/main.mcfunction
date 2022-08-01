#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Load add-on
execute if predicate mad:addon run scoreboard players remove #mad LoadAddon 1

## Log in the mid of the game
execute as @a[predicate=mad:system/game/login_midtime] run function mad:system/common/login_midtime

## Position
function mad:system/common/set_position/main

## Execute advancements - every 4 ticks
#### ** Prohibit use predicate mad:system/game/advancements/execute/part_a **
execute if predicate mad:system/game/advancements/execute/part_b run function mad:system/game/advancements/execute/originals
execute if predicate mad:system/game/advancements/execute/part_c run function mad:system/game/advancements/execute/achievements

## Minecart system
execute as @e[predicate=mad:system/game/minecart/summon] at @s run function mad:system/game/minecart/summon_minecart
execute as @e[predicate=mad:minecart/not_on_ground] at @s run function mad:system/game/minecart/not_on_ground
execute as @e[predicate=mad:minecart/on_ground] at @s run function mad:system/game/minecart/on_ground

## Branch team / individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/team
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/individual