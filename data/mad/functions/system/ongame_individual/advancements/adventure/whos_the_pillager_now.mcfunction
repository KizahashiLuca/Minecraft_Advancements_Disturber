#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s AD_ad_whos_pilla 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.whos_the_pillager_now.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.whos_the_pillager_now.title"},{"translate":"advancements.adventure.whos_the_pillager_now.description"}]}]}}]}]}]
