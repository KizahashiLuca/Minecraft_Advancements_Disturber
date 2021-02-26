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
scoreboard players reset @s TransmitterPosX
scoreboard players reset @s TransmitterPosY
scoreboard players reset @s TransmitterPosZ

## Detect inventory
clear @s minecraft:written_book{title:"発信機",Tags:["MinecartItem"]} 1

## Set scoreboard
execute if entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run function mad:system/ongame/transmitter/transmit_beacon/calculate_distance
execute if entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run function mad:system/ongame/transmitter/transmit_beacon/calculate_angle

## Send messages
execute if entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run function mad:system/ongame/transmitter/transmit_beacon/send_message
execute unless entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run tellraw @s ["",{"text":"[発 信 機] 近くに仲間のリスポーンバナーは無いようです…。","color":"green"}]

## Remove a tag
tag @e remove DetectTransmitter