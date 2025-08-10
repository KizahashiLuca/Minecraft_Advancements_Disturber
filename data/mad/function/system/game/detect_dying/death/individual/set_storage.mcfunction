#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
data modify storage mad: death.address set value ''
data modify storage mad: death.dimension set from entity @s LastDeathLocation.dimension
data modify storage mad: death.x set from entity @s LastDeathLocation.pos[0]
data modify storage mad: death.y set from entity @s LastDeathLocation.pos[1]
data modify storage mad: death.z set from entity @s LastDeathLocation.pos[2]
data modify storage mad: death.message set value ''
data modify storage mad: death.text set value '通常死亡'