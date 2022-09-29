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
scoreboard players set @a[predicate=mad:player/team/c] AD_Adventure_kill_mob_near_sculk_catalyst 1
scoreboard players set #mad_team_c AD_Adventure_kill_mob_near_sculk_catalyst 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only minecraft:adventure/kill_mob_near_sculk_catalyst
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.title"},{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.description"}]}]}}]}]}]
