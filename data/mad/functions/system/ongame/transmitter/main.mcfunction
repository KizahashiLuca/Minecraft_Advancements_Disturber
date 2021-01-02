#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set scoreboard
scoreboard players set @s UseTransmitter 0
scoreboard players enable @s UseTransmitter

## Detect inventory
clear @s minecraft:written_book{title:"発信機",Tags:["MinecartItem"]} 1

## Add a tag
execute if score #mad IsTeam matches 0 run tag @s add DetectTransmitter
execute if score #mad IsTeam matches 1 run function mad:system/ongame/transmitter/add_tag_team

## Send messages
execute store result score @s TransmitterPosX align x run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] Pos[0] 1
execute store result score @s TransmitterPosY align y run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] Pos[1] 1
execute store result score @s TransmitterPosZ align z run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] Pos[2] 1
execute if entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter]","color":"green"},{"text":" が ","color":"green"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"TransmitterPosX"}},{"score":{"name":"@s","objective":"TransmitterPosY"}},{"score":{"name":"@s","objective":"TransmitterPosZ"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute unless entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!DetectTransmitter] run tellraw @s ["",{"text":"[発 信 機] 近くには誰もいないようです…。","color":"green"}]

## Remove a tag
tag @a remove DetectTransmitter