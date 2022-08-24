#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Detect death
gamemode survival @s
scoreboard players set @s Death 0
scoreboard players set @s Phase 21

## Branch team
execute as @s[predicate=mad:player/team/a] run function mad:system/game/detect_death/team/a
execute as @s[predicate=mad:player/team/b] run function mad:system/game/detect_death/team/b
execute as @s[predicate=mad:player/team/c] run function mad:system/game/detect_death/team/c
execute as @s[predicate=mad:player/team/d] run function mad:system/game/detect_death/team/d
execute as @s[predicate=mad:player/team/e] run function mad:system/game/detect_death/team/e