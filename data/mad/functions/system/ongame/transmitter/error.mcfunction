#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Error message
tellraw @s ["",{"text":"[発 信 機] 手持ちに発信機が無ければ使用できません。","color":"green"}]

## Set scoreboard
scoreboard players set @s UseTransmitter 0
scoreboard players enable @s UseTransmitter