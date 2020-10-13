#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Store participant number
execute at @s run scoreboard players operation @s Participant = @p[tag=NotSetPlayerResBeacon,sort=nearest] Participant

## Remove tags
execute at @s run tag @p[tag=NotSetPlayerResBeacon,sort=nearest] remove NotSetPlayerResBeacon
tag @s remove NotSetPlayer