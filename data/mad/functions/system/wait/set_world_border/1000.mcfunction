#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 1001

## Set cloud
execute align xyz run summon minecraft:marker ~500 0 ~500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-500 0 ~500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~500 0 ~-500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-500 0 ~-500 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}