#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players remove @s UseSetTeleporter 1

## Add a tag
tag @s add DetectUseSetTelep

## Detect throwing soul_lantern
execute store success score @s TeleporterTemp1 run data get storage mad:teleporter Teleporter.Store
execute if score @s TeleporterTemp1 matches 1.. as @e[predicate=mad:ongame/teleporter/dropped_soul_lantern_later,sort=nearest,limit=1] run function mad:system/ongame/teleporter/compare_soul_lantern_tag
data remove storage mad:teleporter Teleporter.Temp
data remove storage mad:teleporter Teleporter.TempLore

## Reset scoreboard
scoreboard players reset @s TeleporterTemp1
scoreboard players reset @s TeleporterTemp2
scoreboard players reset @s TeleporterTemp3

## Remove a tag
tag @s remove DetectUseSetTelep

## Kill item
kill @e[predicate=mad:ongame/teleporter/dropped_soul_lantern_later,sort=nearest,limit=1]