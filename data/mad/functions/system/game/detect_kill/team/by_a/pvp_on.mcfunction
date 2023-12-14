#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Move time
execute as @s[predicate=mad:player/alive/b] run function mad:system/game/move_time/team/to_a/from_b
execute as @s[predicate=mad:player/alive/c] run function mad:system/game/move_time/team/to_a/from_c
execute as @s[predicate=mad:player/alive/d] run function mad:system/game/move_time/team/to_a/from_d

## Detect death
function mad:system/game/detect_kill/team