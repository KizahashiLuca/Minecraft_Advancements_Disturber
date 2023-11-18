#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
execute in minecraft:overworld run worldborder set 201
execute in minecraft:the_nether run worldborder set 201
execute in minecraft:the_end run worldborder set 201

## Set cloud
execute align xyz run summon minecraft:marker ~100 0 ~100 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-100 0 ~100 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~100 0 ~-100 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-100 0 ~-100 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}