#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseArmorUpgrader 0

## Detect boots
function mad:system/common/upgrader/armor/boots

## Detect leggings
function mad:system/common/upgrader/armor/leggings

## Detect chestplate
function mad:system/common/upgrader/armor/chestplate

## Detect helmet
function mad:system/common/upgrader/armor/helmet

## Play sound
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[防具改修] 防具をアップグレードしました。","color":"green","bold":false,"italic":false}]

## Kill bat
kill @e[predicate=mad:system/common/upgrader/armor/monster_egg,sort=nearest,limit=1]