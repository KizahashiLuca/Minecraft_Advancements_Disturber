#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Modify data
execute store result score @p[tag=CompareArmorStand] CompareResult run data modify entity @s ArmorItems[3].tag.display.Name set from entity @p[tag=CompareArmorStand] Inventory[{Slot:-106b}].tag.display.Name

## Compare result
execute if score @p[tag=CompareArmorStand] CompareResult matches 0 run scoreboard players operation @s Participant = @p[tag=CompareArmorStand] Participant

## Remove tag
tag @s remove NotSetPlayer

## Return
data modify entity @s ArmorItems[3].tag.display.Name set from entity @s CustomName
