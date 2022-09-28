#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Move time
execute as @s[predicate=mad:player/alive/a] run function mad:system/game/move_time/team/to_d/from_a
execute as @s[predicate=mad:player/alive/b] run function mad:system/game/move_time/team/to_d/from_b
execute as @s[predicate=mad:player/alive/c] run function mad:system/game/move_time/team/to_d/from_c
execute as @s[predicate=mad:player/alive/e] run function mad:system/game/move_time/team/to_d/from_e

## Detect death
function mad:system/game/detect_kill/team

## Revoke advancements
advancement revoke @s only mad:system/game/detect_kill/team/by_d