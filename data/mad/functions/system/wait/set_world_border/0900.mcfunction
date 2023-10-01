#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
execute in minecraft:overworld run worldborder set 901
execute in minecraft:the_nether run worldborder set 901
execute in minecraft:the_end run worldborder set 901

## Set cloud
execute align xyz run summon minecraft:marker ~450 0 ~450 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-450 0 ~450 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~450 0 ~-450 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-450 0 ~-450 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}