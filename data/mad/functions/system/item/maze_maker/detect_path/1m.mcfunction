#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect path
execute if block ~-2 ~ ~ #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~ ~ ~-2 #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~2 ~ ~ #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~ ~ ~2 #mad:wall_block run scoreboard players add @s RandomMax 1