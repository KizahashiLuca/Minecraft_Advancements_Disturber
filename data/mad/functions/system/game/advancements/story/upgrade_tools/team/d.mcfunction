#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/d] AD_Story_upgrade_tools 1
scoreboard players set #mad_team_d AD_Story_upgrade_tools 1
scoreboard players add #mad_team_d HasAdvancements 1
scoreboard players operation #mad_team_d TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_d Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/d] only minecraft:story/upgrade_tools
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.upgrade_tools.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.upgrade_tools.title"},{"translate":"advancements.story.upgrade_tools.description"}]}]}}]}]}]
