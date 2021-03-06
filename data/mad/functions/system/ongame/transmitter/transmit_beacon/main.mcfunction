#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
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
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run function mad:system/ongame/transmitter/transmit_beacon/send_message
execute as @s[nbt={Dimension:"minecraft:overworld"}] unless entity @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] run tellraw @s ["",{"text":"[発 信 機] 近くにリスポーンビーコンは無いようです…。","color":"green"}]
execute as @s[nbt=!{Dimension:"minecraft:overworld"}] run tellraw @s ["",{"text":"[発 信 機] 近くにリスポーンビーコンは無いようです…。","color":"green"}]

## Remove a tag
tag @e remove DetectTransmitter