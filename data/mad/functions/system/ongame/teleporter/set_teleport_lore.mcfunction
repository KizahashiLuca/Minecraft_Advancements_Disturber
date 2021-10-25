#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set teleporter lore
data modify storage mad:teleporter Teleporter.Temp.Message append from entity @s Item.tag.display.Lore[0]
data modify storage mad:teleporter Teleporter.Temp.Message append from entity @s Item.tag.display.Lore[1]
data remove entity @s Item.tag.Tags[1]