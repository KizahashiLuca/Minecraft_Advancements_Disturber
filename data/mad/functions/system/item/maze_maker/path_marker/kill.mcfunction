#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect air
scoreboard players set @s RandomMax 0
function mad:system/item/maze_maker/detect_path
kill @s[predicate=mad:system/item/maze_maker/dead_end]