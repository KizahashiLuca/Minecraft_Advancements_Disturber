#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Randomize
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation @s RandomAnswer = #mad RandomSeed
scoreboard players operation @s RandomAnswer %= @s RandomMax

## Set angle
function mad:system/item/maze_maker/set_angle

## Loop
execute as @s[predicate=mad:system/item/maze_maker/not_set_angle] run function mad:system/item/maze_maker/randomize