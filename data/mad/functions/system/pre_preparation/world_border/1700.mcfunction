#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 1701

## Set cloud
execute align xyz positioned ~850 0 ~850 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~850 0 ~850 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-850 0 ~850 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-850 0 ~850 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~850 0 ~-850 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~850 0 ~-850 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-850 0 ~-850 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-850 0 ~-850 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}