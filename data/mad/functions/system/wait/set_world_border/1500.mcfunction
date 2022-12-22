#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
execute in minecraft:overworld run worldborder set 1501
execute in minecraft:the_nether run worldborder set 1501
execute in minecraft:the_end run worldborder set 1501

## Set cloud
execute align xyz run summon minecraft:marker ~750 0 ~750 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-750 0 ~750 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~750 0 ~-750 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-750 0 ~-750 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}