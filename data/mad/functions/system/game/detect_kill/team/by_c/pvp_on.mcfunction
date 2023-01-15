#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Move time
execute as @s[predicate=mad:player/alive/a] run function mad:system/game/move_time/team/to_c/from_a
execute as @s[predicate=mad:player/alive/b] run function mad:system/game/move_time/team/to_c/from_b
execute as @s[predicate=mad:player/alive/d] run function mad:system/game/move_time/team/to_c/from_d
execute as @s[predicate=mad:player/alive/e] run function mad:system/game/move_time/team/to_c/from_e

## Detect death
function mad:system/game/detect_kill/team