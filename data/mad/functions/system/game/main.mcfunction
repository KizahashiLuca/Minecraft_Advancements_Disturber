#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Load add-on
execute if predicate mad:addon run scoreboard players remove #mad LoadAddon 1

## Log in the mid of the game
execute as @a[predicate=mad:system/game/login_midtime] run function mad:system/game/login_midtime

## Position
function mad:system/common/set_position/main

## Execute advancements
#### ** Prohibit use predicate mad:system/game/advancements/execute/part_a **
function mad:system/game/advancements/execute/part_a
execute if predicate mad:system/game/advancements/execute/part_b run function mad:system/game/advancements/execute/part_b

## Minecart system
execute as @e[predicate=mad:system/game/minecart/summon] if score @s SecondSummon = #mad Second at @s run function mad:system/game/minecart/summon_minecart
execute as @e[predicate=mad:minecart/not_on_ground] at @s run function mad:system/game/minecart/not_on_ground
execute as @e[predicate=mad:minecart/on_ground] at @s run function mad:system/game/minecart/on_ground

## Teleport system
execute as @a[predicate=mad:system/common/teleport/main] run function mad:system/common/teleport/main

## Branch team / individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/team
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/individual

## Exit game
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if predicate mad:system/game/exit_game/main run function mad:system/game/exit_message
execute as @p[predicate=mad:system/game/exit_game/exit] run scoreboard players set #mad Phase 22