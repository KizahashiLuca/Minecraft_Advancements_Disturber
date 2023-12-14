#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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
execute as @s[predicate=mad:player/team/a,predicate=mad:gamerules/death_penalty_time/neq_zero] run function mad:system/game/detect_death/team/penalty/a
execute as @s[predicate=mad:player/team/a,predicate=mad:gamerules/death_penalty_time/eq_zero] run function mad:system/game/detect_death/team/no_penalty/a
execute as @s[predicate=mad:player/team/b,predicate=mad:gamerules/death_penalty_time/neq_zero] run function mad:system/game/detect_death/team/penalty/b
execute as @s[predicate=mad:player/team/b,predicate=mad:gamerules/death_penalty_time/eq_zero] run function mad:system/game/detect_death/team/no_penalty/b
execute as @s[predicate=mad:player/team/c,predicate=mad:gamerules/death_penalty_time/neq_zero] run function mad:system/game/detect_death/team/penalty/c
execute as @s[predicate=mad:player/team/c,predicate=mad:gamerules/death_penalty_time/eq_zero] run function mad:system/game/detect_death/team/no_penalty/c
execute as @s[predicate=mad:player/team/d,predicate=mad:gamerules/death_penalty_time/neq_zero] run function mad:system/game/detect_death/team/penalty/d
execute as @s[predicate=mad:player/team/d,predicate=mad:gamerules/death_penalty_time/eq_zero] run function mad:system/game/detect_death/team/no_penalty/d