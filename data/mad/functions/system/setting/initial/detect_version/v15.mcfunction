#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Minecraft 1.15
replaceitem entity @p[tag=Host] inventory.0 minecraft:honeycomb_block{Tag:"Version"}
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:honeycomb_block",Count:1b,tag:{Tag:"Version"}}]}] run scoreboard players set #mad Version 15