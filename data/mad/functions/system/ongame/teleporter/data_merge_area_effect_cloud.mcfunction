#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Merge data
data modify entity @s Rotation set from storage mad:teleporter Teleporter.Temp.Rotation
data modify entity @s Pos set from storage mad:teleporter Teleporter.Temp.Pos

## Set Owner
scoreboard players operation @s UUID0 = @p[tag=DetectUseSetTelep] UUID0
scoreboard players operation @s UUID1 = @p[tag=DetectUseSetTelep] UUID1
scoreboard players operation @s UUID2 = @p[tag=DetectUseSetTelep] UUID2
scoreboard players operation @s UUID3 = @p[tag=DetectUseSetTelep] UUID3

## Set forceload
execute at @s run forceload add ~ ~