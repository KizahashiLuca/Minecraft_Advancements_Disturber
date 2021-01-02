#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect death
gamemode spectator @s
function mad:system/finish_individual/bossbar_remove
scoreboard players add #mad NumDead 1
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

scoreboard players reset @s Second
scoreboard players reset @s Tick