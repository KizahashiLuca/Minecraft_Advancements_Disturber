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
scoreboard players set @s AD_Achievements_build_sword 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"いざ突撃！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"いざ突撃！"},{"translate":"木材と棒を使い、剣を作る"}]}]}}]}]}]
