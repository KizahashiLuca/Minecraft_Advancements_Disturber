#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border
execute in minecraft:overworld run worldborder set 1601
execute in minecraft:the_nether run worldborder set 1601
execute in minecraft:the_end run worldborder set 1601

## Set cloud
execute align xyz run summon minecraft:marker ~800 0 ~800 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-800 0 ~800 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~800 0 ~-800 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}
execute align xyz run summon minecraft:marker ~-800 0 ~-800 {Tags:["MAD_WorldCorner"],NoGravity:1b,Invulnerable:1b}