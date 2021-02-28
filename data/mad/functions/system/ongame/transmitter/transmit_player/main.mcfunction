#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Set scoreboard
scoreboard players set @s UseTransmitter 0
scoreboard players enable @s UseTransmitter

## Detect inventory
clear @s minecraft:written_book{title:"発信機",Tags:["MinecartItem"]} 1

## Add a tag
execute if score #mad IsTeam matches 0 run tag @s add DetectTransmitter
execute if score #mad IsTeam matches 1 run function mad:system/ongame/transmitter/transmit_player/add_tag_team
tag @p[predicate=mad:ongame/player/participant_alive,tag=!DetectTransmitter,sort=nearest,limit=1] add TransmitPlayer

## Set scoreboard
scoreboard players operation @s TransmitterPosX = @p[tag=TransmitPlayer] PosX
scoreboard players operation @s TransmitterPosY = @p[tag=TransmitPlayer] PosY
scoreboard players operation @s TransmitterPosZ = @p[tag=TransmitPlayer] PosZ

## Send messages
execute if entity @e[tag=TransmitPlayer] run tellraw @s ["",{"text":"[発 信 機]  ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"TransmitterPosX"}},{"score":{"name":"@s","objective":"TransmitterPosY"}},{"score":{"name":"@s","objective":"TransmitterPosZ"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute unless entity @p[tag=TransmitPlayer] run tellraw @s ["",{"text":"[発 信 機] 近くには誰もいないようです…。","color":"green"}]

## Remove a tag
tag @a remove TransmitPlayer
tag @a remove DetectTransmitter