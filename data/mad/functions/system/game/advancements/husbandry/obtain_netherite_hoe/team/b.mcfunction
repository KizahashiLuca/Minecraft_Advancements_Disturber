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
scoreboard players set @a[predicate=mad:player/team/b] AD_Husbandry_obtain_netherite_hoe 1
scoreboard players set #mad_team_b AD_Husbandry_obtain_netherite_hoe 1
scoreboard players add #mad_team_b HasAdvancements 1
scoreboard players operation #mad_team_b TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_b Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/b] only minecraft:husbandry/obtain_netherite_hoe
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.netherite_hoe.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.netherite_hoe.title"},{"translate":"advancements.husbandry.netherite_hoe.description"}]}]}}]}]}]
