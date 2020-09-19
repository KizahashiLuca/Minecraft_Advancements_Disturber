#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
scoreboard players set @s UseTransmitter 0
scoreboard players enable @s UseTransmitter

## Detect inventory
clear @s minecraft:written_book{title:"発信機",Tags:["Minecart"]} 1

## Add a tag
execute as @s[team=TeamA] run tag @a[team=TeamA] add Transmitter
execute as @s[team=TeamB] run tag @a[team=TeamB] add Transmitter
execute as @s[team=TeamC] run tag @a[team=TeamC] add Transmitter
execute as @s[team=TeamD] run tag @a[team=TeamD] add Transmitter
execute as @s[team=TeamE] run tag @a[team=TeamE] add Transmitter

## Send messages
execute store result score @s TransmitterPosX align x run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter] Pos[0] 1
execute store result score @s TransmitterPosY align y run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter] Pos[1] 1
execute store result score @s TransmitterPosZ align z run data get entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter] Pos[2] 1
execute if entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter] run tellraw @s ["",{"text":"[発信機] ","color":"green"},{"selector":"@p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter]","color":"green"},{"text":" が ","color":"green"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"TransmitterPosX"}},{"score":{"name":"@s","objective":"TransmitterPosY"}},{"score":{"name":"@s","objective":"TransmitterPosZ"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute unless entity @p[scores={Phase=21,Death=0},limit=1,sort=nearest,tag=!Transmitter] run tellraw @s ["",{"text":"[発信機] 近くには誰もいないようです…。","color":"green"}]

## Remove a tag
tag @a remove Transmitter