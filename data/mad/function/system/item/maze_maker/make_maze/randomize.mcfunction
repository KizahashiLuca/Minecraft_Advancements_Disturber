#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Randomize
scoreboard players operation #mad RandomizerSeed *= #mad RandomizerMultiplier
scoreboard players operation #mad RandomizerSeed %= #mad RandomizerModder
scoreboard players operation @s RandomizerResult = #mad RandomizerSeed
scoreboard players operation @s RandomizerResult %= @s RandomMax

## Set angle
function mad:system/item/maze_maker/make_maze/set_angle

## Loop
execute as @s[predicate=mad:system/item/maze_maker/make_maze/not_set_angle] run function mad:system/item/maze_maker/make_maze/randomize