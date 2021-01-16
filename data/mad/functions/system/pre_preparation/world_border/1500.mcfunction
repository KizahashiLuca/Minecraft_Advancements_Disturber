#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set world border
worldborder set 1501

## Set cloud
execute align xyz positioned ~750 0 ~750 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~750 0 ~750 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-750 0 ~750 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-750 0 ~750 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~750 0 ~-750 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~750 0 ~-750 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-750 0 ~-750 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-750 0 ~-750 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}