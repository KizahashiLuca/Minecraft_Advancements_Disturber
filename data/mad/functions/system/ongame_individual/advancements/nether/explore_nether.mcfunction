#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s AD_nt_explore 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.goal","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.explore_nether.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.explore_nether.title"},{"translate":"advancements.nether.explore_nether.description"}]}]}}]}]}]
