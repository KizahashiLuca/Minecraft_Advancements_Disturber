#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
worldborder set 2001

## Set cloud
execute align xyz run summon minecraft:marker ~1000 0 ~1000 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-1000 0 ~1000 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~1000 0 ~-1000 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-1000 0 ~-1000 {Tags:["WorldCorner"],NoGravity:1b,Invulnerable:1b}