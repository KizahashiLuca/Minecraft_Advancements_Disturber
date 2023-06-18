#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/c] AD_Nether_netherite_armor 1
scoreboard players set #mad_team_c AD_Nether_netherite_armor 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only minecraft:nether/netherite_armor
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.nether.netherite_armor.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.nether.netherite_armor.title"},{"translate":"advancements.nether.netherite_armor.description"}]}]}}]}]}]
