#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 501

## Set cloud
execute align xyz run summon minecraft:marker ~250 0 ~250 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-250 0 ~250 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~250 0 ~-250 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-250 0 ~-250 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}