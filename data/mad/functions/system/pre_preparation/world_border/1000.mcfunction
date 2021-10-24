#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 1001

## Set cloud
execute align xyz run summon minecraft:area_effect_cloud ~500 0 ~500 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz run summon minecraft:area_effect_cloud ~-500 0 ~500 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz run summon minecraft:area_effect_cloud ~500 0 ~-500 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz run summon minecraft:area_effect_cloud ~-500 0 ~-500 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}