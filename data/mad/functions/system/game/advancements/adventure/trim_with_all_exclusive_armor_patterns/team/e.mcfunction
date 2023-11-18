#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/e] AD_Adventure_trim_with_all_exclusive_armor_patterns 1
scoreboard players set #mad_team_e AD_Adventure_trim_with_all_exclusive_armor_patterns 1
scoreboard players add #mad_team_e HasAdvancements 1
scoreboard players operation #mad_team_e TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_e Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/e] only minecraft:adventure/trim_with_all_exclusive_armor_patterns
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.trim_with_all_exclusive_armor_patterns.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.trim_with_all_exclusive_armor_patterns.title"},{"translate":"advancements.adventure.trim_with_all_exclusive_armor_patterns.description"}]}]}}]}]}]
