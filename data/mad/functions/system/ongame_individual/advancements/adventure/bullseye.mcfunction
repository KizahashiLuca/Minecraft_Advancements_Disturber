#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set scoreboard
scoreboard players set @s AD_ad_bullseye 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.challenge","with":[{"selector":"@s"},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.bullseye.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.bullseye.title"},{"translate":"advancements.adventure.bullseye.description"}]}]}}]}]}]
