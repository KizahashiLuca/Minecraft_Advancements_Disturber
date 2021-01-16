#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set world border
worldborder set 701

## Set cloud
execute align xyz positioned ~350 0 ~350 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~350 0 ~350 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-350 0 ~350 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-350 0 ~350 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~350 0 ~-350 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~350 0 ~-350 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute align xyz positioned ~-350 0 ~-350 run forceload add ~ ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~-350 0 ~-350 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}