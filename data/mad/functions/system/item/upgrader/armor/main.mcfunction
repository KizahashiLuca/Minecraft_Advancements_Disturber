#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseArmorUpgrader 0

## Detect boots
function mad:system/item/upgrader/armor/boots

## Detect leggings
function mad:system/item/upgrader/armor/leggings

## Detect chestplate
function mad:system/item/upgrader/armor/chestplate

## Detect helmet
function mad:system/item/upgrader/armor/helmet

## Play sound
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[防具改修] 防具をアップグレードしました。","color":"green","bold":false,"italic":false}]

## Kill bat
kill @e[predicate=mad:system/item/upgrader/armor/monster_egg,sort=nearest,limit=1]