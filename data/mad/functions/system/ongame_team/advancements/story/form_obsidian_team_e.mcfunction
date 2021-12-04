#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamE] AD_mc_obsidian 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only minecraft:story/form_obsidian
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.form_obsidian.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.form_obsidian.title"},{"translate":"advancements.story.form_obsidian.description"}]}]}}]}]}]
