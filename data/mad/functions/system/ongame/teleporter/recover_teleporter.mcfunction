#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Recover lore
data modify entity @s Item.tag.display.Lore set from storage mad:teleporter Teleporter.TempLore

## Recover storage
data modify storage mad:teleporter Teleporter.Store append from storage mad:teleporter Teleporter.Temp

## Send message
tellraw @p[predicate=mad:ongame/teleporter/differ_teleporter_dimension] ["",{"text":"[テレポーター] テレポート先が異なるディメンションのため、テレポートできません。","color":"green"}]