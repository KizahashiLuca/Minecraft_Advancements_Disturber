#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s AD_Husbandry_plant_seed 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.plant_seed.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.plant_seed.title"},{"translate":"advancements.husbandry.plant_seed.description"}]}]}}]}]}]
