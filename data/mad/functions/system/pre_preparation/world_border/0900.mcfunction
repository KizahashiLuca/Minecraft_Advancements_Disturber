#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set world border
worldborder set 901

## Set cloud
execute align xyz positioned ~450 0 ~450 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~450 0 ~450 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-450 0 ~450 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-450 0 ~450 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~450 0 ~-450 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~450 0 ~-450 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-450 0 ~-450 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-450 0 ~-450 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}