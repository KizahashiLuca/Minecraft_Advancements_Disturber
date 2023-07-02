#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
execute in minecraft:overworld run worldborder set 301
execute in minecraft:the_nether run worldborder set 301
execute in minecraft:the_end run worldborder set 301

## Set cloud
execute align xyz run summon minecraft:marker ~150 0 ~150 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-150 0 ~150 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~150 0 ~-150 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-150 0 ~-150 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}