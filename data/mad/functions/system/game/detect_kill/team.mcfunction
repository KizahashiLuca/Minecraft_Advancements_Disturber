#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

## replaceitem
loot replace entity @s inventory.0 loot mad:entities/player

## Spectate
spectate @p[predicate=mad:player/alive/a,sort=nearest] @s[predicate=mad:player/team/a]
spectate @p[predicate=mad:player/alive/b,sort=nearest] @s[predicate=mad:player/team/b]
spectate @p[predicate=mad:player/alive/c,sort=nearest] @s[predicate=mad:player/team/c]
spectate @p[predicate=mad:player/alive/d,sort=nearest] @s[predicate=mad:player/team/d]
spectate @p[predicate=mad:player/alive/e,sort=nearest] @s[predicate=mad:player/team/e]