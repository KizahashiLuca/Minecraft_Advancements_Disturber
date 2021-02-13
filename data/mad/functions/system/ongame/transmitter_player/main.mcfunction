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
execute if score #mad IsTeam matches 0 run tag @s add DetectTransmitter
execute if score #mad IsTeam matches 1 run function mad:system/ongame/transmitter_player/add_tag_team
tag @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] add TransmitPlayer

## Send messages
execute if entity @p[tag=TransmitPlayer] run function mad:system/ongame/transmitter_player/calculate_distance
execute if entity @p[tag=TransmitPlayer] run function mad:system/ongame/transmitter_player/calculate_angle
execute if entity @p[tag=TransmitPlayer] run function mad:system/ongame/transmitter_player/send_message
execute unless entity @p[tag=TransmitPlayer] run tellraw @s ["",{"text":"[発 信 機] 近くには誰もいないようです…。","color":"green"}]

## Remove a tag
tag @a remove TransmitPlayer
tag @a remove DetectTransmitter