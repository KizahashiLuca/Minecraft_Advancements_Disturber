#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Minecraft 1.16
replaceitem entity @p[tag=Host] inventory.0 minecraft:soul_lantern{Tag:"Version"}
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:soul_lantern",Count:1b,tag:{Tag:"Version"}}]}] run scoreboard players set #mad Version 16