#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true}]
title @a times 20 80 20

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

## replaceitem
loot replace entity @s inventory.0 loot minecraft:entities/player

## Spectate
spectate @p[predicate=mad:ongame/player/team_a_alive,sort=nearest] @s[team=TeamA]
spectate @p[predicate=mad:ongame/player/team_b_alive,sort=nearest] @s[team=TeamB]
spectate @p[predicate=mad:ongame/player/team_c_alive,sort=nearest] @s[team=TeamC]
spectate @p[predicate=mad:ongame/player/team_d_alive,sort=nearest] @s[team=TeamD]
spectate @p[predicate=mad:ongame/player/team_e_alive,sort=nearest] @s[team=TeamE]