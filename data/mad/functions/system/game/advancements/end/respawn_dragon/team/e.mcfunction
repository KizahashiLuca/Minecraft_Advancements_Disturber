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
scoreboard players set @a[predicate=mad:player/team/e] AD_End_respawn_dragon 1
scoreboard players set #mad_team_e AD_End_respawn_dragon 1
scoreboard players add #mad_team_e HasAdvancements 1
scoreboard players operation #mad_team_e TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_e Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/e] only minecraft:end/respawn_dragon
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.end.respawn_dragon.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.end.respawn_dragon.title"},{"translate":"advancements.end.respawn_dragon.description"}]}]}}]}]}]
