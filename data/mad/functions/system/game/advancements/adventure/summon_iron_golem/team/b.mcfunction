#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/b] AD_Adventure_summon_iron_golem 1
scoreboard players set #mad_team_b AD_Adventure_summon_iron_golem 1
scoreboard players add #mad_team_b HasAdvancements 1
scoreboard players operation #mad_team_b TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_b Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/b] only minecraft:adventure/summon_iron_golem
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.summon_iron_golem.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.summon_iron_golem.title"},{"translate":"advancements.adventure.summon_iron_golem.description"}]}]}}]}]}]
