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
scoreboard players set @a[predicate=mad:player/team/e] AD_Nether_use_lodestone 1
scoreboard players set #mad_team_e AD_Nether_use_lodestone 1
scoreboard players add #mad_team_e HasAdvancements 1
scoreboard players operation #mad_team_e TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_e Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/e] only minecraft:nether/use_lodestone
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.use_lodestone.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.use_lodestone.title"},{"translate":"advancements.nether.use_lodestone.description"}]}]}}]}]}]