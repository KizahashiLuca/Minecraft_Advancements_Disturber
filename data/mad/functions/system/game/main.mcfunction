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

## Branch team / individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/team
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/individual

## Position
function mad:system/common/set_position/main

## Execute advancements - every 4 ticks
#### Prohibit use part_a
execute if predicate mad:system/game/advancements/execute/part_b run function mad:system/game/advancements/execute/originals
execute if predicate mad:system/game/advancements/execute/part_c run function mad:system/game/advancements/execute/achievements

## Minecart system
execute as @e[predicate=mad:system/game/minecart/summon] at @s run function mad:system/game/minecart/summon_minecart
execute as @e[predicate=mad:minecart/not_on_ground] at @s run function mad:system/game/minecart/not_on_ground
execute as @e[predicate=mad:minecart/on_ground] at @s run function mad:system/game/minecart/on_ground

## Transmitter
execute as @a[predicate=mad:system/common/transmitter/use] at @s run function mad:system/common/transmitter/main

## Armor upgrader
execute as @a[predicate=mad:system/common/upgrader/armor/use] at @s run function mad:system/common/upgrader/armor/main

## Tool upgrader
execute as @a[predicate=mad:system/common/upgrader/tool/use] at @s run function mad:system/common/upgrader/tool/main

## Notice of thief
execute as @a[predicate=mad:system/common/notice_of_thief/use] at @s run function mad:system/common/notice_of_thief/main
execute as @a[predicate=mad:system/common/notice_of_thief/thief] at @s run function mad:system/common/notice_of_thief/time/tick

## Emergency call
execute as @a[predicate=mad:system/common/emergency_call/use] at @s run function mad:system/common/emergency_call/main

## Return portal
execute as @e[predicate=mad:system/common/return_portal/armor_stand] at @s run function mad:system/common/return_portal/main