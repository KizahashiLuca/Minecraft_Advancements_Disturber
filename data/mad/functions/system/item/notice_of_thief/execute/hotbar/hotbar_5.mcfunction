#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Merge data
execute store success score @s StealResult run data modify entity @e[predicate=mad:system/item/notice_of_thief/stolen_item,sort=nearest,limit=1] Item set from entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] Inventory[{Slot:5b}]

## Replace item
execute as @s[predicate=mad:system/item/notice_of_thief/result/success] run item replace entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] hotbar.5 with minecraft:air