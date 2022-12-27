#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport path
tp @s[predicate=mad:system/item/maze_maker/angle/west,scores={MazePosX=1..}] ~-4 ~ ~
tp @s[predicate=mad:system/item/maze_maker/angle/north,scores={MazePosZ=1..}] ~ ~ ~-4
tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..7}] ~4 ~ ~
tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..7}] ~ ~ ~4