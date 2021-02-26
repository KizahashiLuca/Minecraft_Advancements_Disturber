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

## Add a tag
function mad:system/ongame/transmitter/transmit_banner/add_tag_team

## Set scoreboard
execute store result score @s TransmitterPosX align x run data get entity @e[predicate=mad:ongame/transmitter_banner,sort=nearest,limit=1] Pos[0] 1
execute store result score @s TransmitterPosY align y run data get entity @e[predicate=mad:ongame/transmitter_banner,sort=nearest,limit=1] Pos[1] 1
execute store result score @s TransmitterPosZ align z run data get entity @e[predicate=mad:ongame/transmitter_banner,sort=nearest,limit=1] Pos[2] 1

## Send messages
execute if entity @e[predicate=mad:ongame/transmitter_banner] run tellraw @s ["",{"text":"[発 信 機] 仲間のリスポーンバナーが ","color":"green"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"TransmitterPosX"}},{"score":{"name":"@s","objective":"TransmitterPosY"}},{"score":{"name":"@s","objective":"TransmitterPosZ"}}],"color":"green"},{"text":" にあります。","color":"green"}]
execute unless entity @e[predicate=mad:ongame/transmitter_banner] run tellraw @s ["",{"text":"[発 信 機] 近くに仲間のリスポーンバナーは無いようです…。","color":"green"}]

## Remove a tag
tag @e remove DetectTransmitter