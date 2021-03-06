#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set world border
worldborder set 1401

## Set cloud
execute align xyz positioned ~700 0 ~700 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~700 0 ~700 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-700 0 ~700 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-700 0 ~700 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~700 0 ~-700 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~700 0 ~-700 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-700 0 ~-700 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-700 0 ~-700 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}