#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @s UseTransmitter 0
scoreboard players enable @s UseTransmitter

## Detect inventory
clear @s minecraft:written_book{title:"発信機",Tags:["MinecartItem"]} 1

## Add a tag
function mad:system/ongame/transmitter_banner/add_tag_team

## Send messages
execute if entity @e[type=minecraft:armor_stand,tag=RespawnBanner,tag=DetectTransmitter] run function mad:system/ongame/transmitter_banner/calculate_distance
execute unless entity @e[type=minecraft:armor_stand,tag=RespawnBanner,tag=DetectTransmitter] run tellraw @s ["",{"text":"[発 信 機] 近くに仲間のリスポーンバナーは無いようです…。","color":"green"}]

## Remove a tag
tag @e remove DetectTransmitter