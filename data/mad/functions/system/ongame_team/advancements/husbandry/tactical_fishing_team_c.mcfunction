#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamC] AD_hb_tacti_fish 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only minecraft:husbandry/tactical_fishing
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.tactical_fishing.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.tactical_fishing.title"},{"translate":"advancements.husbandry.tactical_fishing.description"}]}]}}]}]}]
