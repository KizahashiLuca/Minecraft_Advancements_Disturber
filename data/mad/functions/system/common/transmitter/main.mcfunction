#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseTransmitter 0

## Add a tag
execute if predicate mad:gamerules/match_mode/individual run tag @s add MAD_DetectTransmitter
execute if predicate mad:gamerules/match_mode/team run function mad:system/common/transmitter/add_tag_team
tag @p[predicate=mad:system/common/transmitter/detect_transmitter,sort=nearest,limit=1] add MAD_TransmitPlayer

## Set scoreboard
scoreboard players operation @s TransmitterPosX = @p[predicate=mad:system/common/transmitter/transmit_player] PosX
scoreboard players operation @s TransmitterPosY = @p[predicate=mad:system/common/transmitter/transmit_player] PosY
scoreboard players operation @s TransmitterPosZ = @p[predicate=mad:system/common/transmitter/transmit_player] PosZ

## Send messages
execute if entity @e[predicate=mad:system/common/transmitter/transmit_player] run tellraw @s ["",{"translate":"[発 信 機]  %s が ","with":[{"selector":"@p[predicate=mad:system/common/transmitter/transmit_player]"}],"color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"TransmitterPosX"}},{"score":{"name":"@s","objective":"TransmitterPosY"}},{"score":{"name":"@s","objective":"TransmitterPosZ"}}],"color":"green","bold":false,"italic":false},{"text":" にいます。","color":"green","bold":false,"italic":false}]
execute unless entity @p[predicate=mad:system/common/transmitter/transmit_player] run tellraw @s ["",{"text":"[発 信 機] 近くには誰もいないようです……。","color":"green","bold":false,"italic":false}]

## Remove tags
tag @a remove MAD_TransmitPlayer
tag @a remove MAD_DetectTransmitter

## Kill vindicator
kill @e[predicate=mad:system/common/transmitter/monster_egg,sort=nearest,limit=1]