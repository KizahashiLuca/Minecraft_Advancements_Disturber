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
scoreboard players set @a[predicate=mad:player/team/e] AD_Nether_distract_piglin 1
scoreboard players set #mad_team_e AD_Nether_distract_piglin 1
scoreboard players add #mad_team_e HasAdvancements 1
scoreboard players operation #mad_team_e TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_e Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/e] only minecraft:nether/distract_piglin
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.distract_piglin.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.distract_piglin.title"},{"translate":"advancements.nether.distract_piglin.description"}]}]}}]}]}]