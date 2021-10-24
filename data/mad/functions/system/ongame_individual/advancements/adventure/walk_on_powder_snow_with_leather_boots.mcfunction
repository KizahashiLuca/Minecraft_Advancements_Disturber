#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s AD_ad_powdersnow 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.walk_on_powder_snow_with_leather_boots.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.walk_on_powder_snow_with_leather_boots.title"},{"translate":"advancements.adventure.walk_on_powder_snow_with_leather_boots.description"}]}]}}]}]}]
