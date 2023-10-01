#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Move time
execute as @s[predicate=mad:player/alive/a] run function mad:system/game/move_time/team/to_b/from_a
execute as @s[predicate=mad:player/alive/c] run function mad:system/game/move_time/team/to_b/from_c
execute as @s[predicate=mad:player/alive/d] run function mad:system/game/move_time/team/to_b/from_d
execute as @s[predicate=mad:player/alive/e] run function mad:system/game/move_time/team/to_b/from_e

## Detect death
function mad:system/game/detect_kill/team