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
scoreboard players set @a[predicate=mad:player/team/d] AD_Adventure_lightning_rod_with_villager_no_fire 1
scoreboard players set #mad_team_d AD_Adventure_lightning_rod_with_villager_no_fire 1
scoreboard players add #mad_team_d HasAdvancements 1
scoreboard players operation #mad_team_d TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_d Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/d] only minecraft:adventure/lightning_rod_with_villager_no_fire
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.lightning_rod_with_villager_no_fire.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.lightning_rod_with_villager_no_fire.title"},{"translate":"advancements.adventure.lightning_rod_with_villager_no_fire.description"}]}]}}]}]}]
