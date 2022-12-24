#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon an item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MAD_StolenItem"]}},PickupDelay:0s}

## Steal item
execute if entity @p[predicate=mad:system/item/notice_of_thief/can_steal] run function mad:system/item/notice_of_thief/execute/hotbar/can_steal

## Replace item
execute as @s[predicate=mad:system/item/notice_of_thief/result/failure] run kill @e[predicate=mad:system/item/notice_of_thief/stolen_item,sort=nearest,limit=1]

## Send messages - to thief
execute if entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] run tellraw @s[predicate=mad:system/item/notice_of_thief/result/success] ["",{"translate":"[怪盗予告]  %s のアイテムを盗みました。","with":[{"selector":"@p[predicate=mad:system/item/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute if entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] run tellraw @s[predicate=mad:system/item/notice_of_thief/result/failure] ["",{"translate":"[怪盗予告]  %s の手持ちアイテムが無いため、 ","with":[{"selector":"@p[predicate=mad:system/item/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false},{"text":"アイテムを盗めませんでした。","color":"green","bold":false,"italic":false}]
execute unless entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] run tellraw @s ["",{"text":"[怪盗予告] 盗み先を指定できず、 ","color":"green","bold":false,"italic":false},{"text":"アイテムを盗めませんでした。","color":"green","bold":false,"italic":false}]

## Send messages - to stolen player
execute if entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] as @s[predicate=mad:system/item/notice_of_thief/result/success] run tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief] ["",{"translate":"[怪盗予告]  %s のアイテムが盗まれました。","with":[{"selector":"@p[predicate=mad:system/item/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false}]
execute if entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] as @s[predicate=mad:system/item/notice_of_thief/result/failure] run tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief] ["",{"translate":"[怪盗予告]  %s の手持ちアイテムが無いため、 ","with":[{"selector":"@p[predicate=mad:system/item/notice_of_thief/stolen_player]"}],"color":"green","bold":false,"italic":false},{"text":"アイテムは盗まれませんでした。","color":"green","bold":false,"italic":false}]
execute unless entity @p[predicate=mad:system/item/notice_of_thief/stolen_player] run tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief] ["",{"text":"[怪盗予告] 盗み先を指定できず、 ","color":"green","bold":false,"italic":false},{"text":"アイテムは盗まれませんでした。","color":"green","bold":false,"italic":false}]