#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/c] AD_Husbandry_tame_an_animal 1
scoreboard players set #mad_team_c AD_Husbandry_tame_an_animal 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only minecraft:husbandry/tame_an_animal
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.tame_an_animal.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.tame_an_animal.title"},{"translate":"advancements.husbandry.tame_an_animal.description"}]}]}}]}]}]
