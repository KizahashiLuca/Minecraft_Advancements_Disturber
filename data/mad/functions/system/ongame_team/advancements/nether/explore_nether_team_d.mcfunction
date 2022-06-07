#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamD] AD_Nether_explore_nether 1
scoreboard players add @a[team=TeamD] HasAdvancements 1
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamD] only minecraft:nether/explore_nether
tellraw @a[team=TeamD] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.nether.explore_nether.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.nether.explore_nether.title"},{"translate":"advancements.nether.explore_nether.description"}]}]}}]}]}]
