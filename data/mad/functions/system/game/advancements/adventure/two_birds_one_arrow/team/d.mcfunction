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
scoreboard players set @a[predicate=mad:player/team/d] AD_Adventure_two_birds_one_arrow 1
scoreboard players set #mad_team_d AD_Adventure_two_birds_one_arrow 1
scoreboard players add #mad_team_d HasAdvancements 1
scoreboard players operation #mad_team_d TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_d Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/d] only minecraft:adventure/two_birds_one_arrow
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.two_birds_one_arrow.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.two_birds_one_arrow.title"},{"translate":"advancements.adventure.two_birds_one_arrow.description"}]}]}}]}]}]
