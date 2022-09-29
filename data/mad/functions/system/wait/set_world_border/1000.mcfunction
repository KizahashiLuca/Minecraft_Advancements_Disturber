#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 1001

## Set cloud
execute align xyz run summon minecraft:marker ~500 0 ~500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-500 0 ~500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~500 0 ~-500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-500 0 ~-500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}