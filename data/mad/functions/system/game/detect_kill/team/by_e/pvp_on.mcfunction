#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Move time
execute as @s[predicate=mad:player/alive/a] run function mad:system/game/move_time/team/to_e/from_a
execute as @s[predicate=mad:player/alive/b] run function mad:system/game/move_time/team/to_e/from_b
execute as @s[predicate=mad:player/alive/c] run function mad:system/game/move_time/team/to_e/from_c
execute as @s[predicate=mad:player/alive/d] run function mad:system/game/move_time/team/to_e/from_d

## Detect death
function mad:system/game/detect_kill/team