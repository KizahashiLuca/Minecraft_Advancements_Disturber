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
scoreboard players set @a[predicate=mad:player/team/c] AD_Story_obtain_armor 1
scoreboard players set #mad_team_c AD_Story_obtain_armor 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only minecraft:story/obtain_armor
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.obtain_armor.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.obtain_armor.title"},{"translate":"advancements.story.obtain_armor.description"}]}]}}]}]}]