#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamC] AD_mc_enter_hell 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad AddingTime
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.enter_the_nether.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.enter_the_nether.title"},{"translate":"advancements.story.enter_the_nether.description"}]}]}}]}]}]
