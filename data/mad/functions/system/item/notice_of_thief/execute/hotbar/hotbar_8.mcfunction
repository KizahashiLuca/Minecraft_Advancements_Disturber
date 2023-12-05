#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Merge data
execute store success score @s StealResult run data modify entity @e[predicate=mad:system/item/notice_of_thief/stolen_item,sort=nearest,limit=1] Item set from entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] Inventory[{Slot:8b}]

## Replace item
execute as @s[predicate=mad:system/item/notice_of_thief/result/success] run item replace entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] hotbar.8 with minecraft:air