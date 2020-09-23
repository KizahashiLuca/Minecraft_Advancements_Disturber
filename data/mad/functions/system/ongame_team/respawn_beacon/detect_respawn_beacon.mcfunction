#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect respawn beacon
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RespawnBeacon"],NoGravity:1b,Particle:"block minecraft:air",Radius:0.5f,Duration:2147483647}

kill @s