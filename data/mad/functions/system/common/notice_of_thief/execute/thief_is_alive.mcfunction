#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon an item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MAD_StolenItem"]}},PickupDelay:0s}

## Merge data
execute store success score @s StealResult run data modify entity @e[predicate=mad:system/common/notice_of_thief/stolen_item,sort=nearest,limit=1] Item set from entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] SelectedItem

## Replace item
execute as @s[predicate=mad:system/common/notice_of_thief/result/success] run item replace entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] weapon.mainhand with minecraft:air
execute as @s[predicate=mad:system/common/notice_of_thief/result/failure] run kill @e[predicate=mad:system/common/notice_of_thief/stolen_item,sort=nearest,limit=1]

## Send messages - to thief
execute if entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] run tellraw @s[predicate=mad:system/common/notice_of_thief/result/success] ["",{"translate":"[怪盗予告]  %s のアイテムを盗みました。","with":[{"selector":"@p[predicate=mad:system/common/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute if entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] run tellraw @s[predicate=mad:system/common/notice_of_thief/result/failure] ["",{"translate":"[怪盗予告]  %s の手持ちアイテムが無いため、アイテムを盗めませんでした。","with":[{"selector":"@p[predicate=mad:system/common/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute unless entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] run tellraw @s[predicate=mad:system/common/notice_of_thief/result/success] ["",{"text":"[怪盗予告] 盗み先を指定できず、アイテムを盗めませんでした。","color":"green","bold":false,"italic":false}]

## Send messages - to stolen player
execute if entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] as @s[predicate=mad:system/common/notice_of_thief/result/success] run tellraw @a[predicate=mad:system/common/notice_of_thief/detect_not_thief] ["",{"translate":"[怪盗予告]  %s のアイテムが盗まれました。","with":[{"selector":"@p[predicate=mad:system/common/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute if entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] as @s[predicate=mad:system/common/notice_of_thief/result/failure] run tellraw @a[predicate=mad:system/common/notice_of_thief/detect_not_thief] ["",{"translate":"[怪盗予告]  %s の手持ちアイテムが無いため、アイテムは盗まれませんでした。","with":[{"selector":"@p[predicate=mad:system/common/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute unless entity @p[predicate=mad:system/common/notice_of_thief/stolen_player] run tellraw @a[predicate=mad:system/common/notice_of_thief/detect_not_thief] ["",{"text":"[怪盗予告] 盗み先を指定できず、アイテムは盗まれませんでした。","color":"green","bold":false,"italic":false}]