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
scoreboard players set @a[predicate=mad:player/team/a] AD_Adventure_craft_decorated_pot_using_only_sherds 1
scoreboard players set #mad_team_a AD_Adventure_craft_decorated_pot_using_only_sherds 1
scoreboard players add #mad_team_a HasAdvancements 1
scoreboard players operation #mad_team_a TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_a Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/a] only minecraft:adventure/craft_decorated_pot_using_only_sherds
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.craft_decorated_pot_using_only_sherds.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.craft_decorated_pot_using_only_sherds.title"},{"translate":"advancements.adventure.craft_decorated_pot_using_only_sherds.description"}]}]}}]}]}]
