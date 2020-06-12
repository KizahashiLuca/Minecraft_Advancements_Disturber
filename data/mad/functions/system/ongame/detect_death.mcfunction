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
function mad:system/finish/bossbar_remove
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

scoreboard players reset @s Second
scoreboard players reset @s Tick