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
scoreboard players set @a[team=TeamC] AD_nt_cry_obsidn 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only minecraft:nether/obtain_crying_obsidian
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.obtain_crying_obsidian.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.obtain_crying_obsidian.title"},{"translate":"advancements.nether.obtain_crying_obsidian.description"}]}]}}]}]}]
