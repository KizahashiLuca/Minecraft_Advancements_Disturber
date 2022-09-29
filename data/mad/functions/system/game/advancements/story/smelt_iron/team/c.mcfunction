#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/c] AD_Story_smelt_iron 1
scoreboard players set #mad_team_c AD_Story_smelt_iron 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only minecraft:story/smelt_iron
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.smelt_iron.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.smelt_iron.title"},{"translate":"advancements.story.smelt_iron.description"}]}]}}]}]}]
