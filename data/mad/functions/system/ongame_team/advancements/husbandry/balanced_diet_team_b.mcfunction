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
scoreboard players set @a[team=TeamB] AD_Husbandry_balanced_diet 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only minecraft:husbandry/balanced_diet
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.balanced_diet.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.balanced_diet.title"},{"translate":"advancements.husbandry.balanced_diet.description"}]}]}}]}]}]
