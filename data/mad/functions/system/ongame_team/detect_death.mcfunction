#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

execute if score #mad TeamNumber matches 1.. unless entity @p[team=TeamA,scores={Phase=21,Death=0}] run scoreboard players add #mad NumDead 1
execute if score #mad TeamNumber matches 2.. unless entity @p[team=TeamB,scores={Phase=21,Death=0}] run scoreboard players add #mad NumDead 1
execute if score #mad TeamNumber matches 3.. unless entity @p[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players add #mad NumDead 1
execute if score #mad TeamNumber matches 4.. unless entity @p[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players add #mad NumDead 1
execute if score #mad TeamNumber matches 5.. unless entity @p[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players add #mad NumDead 1