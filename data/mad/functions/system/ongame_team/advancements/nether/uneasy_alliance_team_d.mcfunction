#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamD] AD_nt_uneasy_alc 1
scoreboard players add @a[team=TeamD] HasAdvancements 1
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamD] only minecraft:nether/uneasy_alliance
tellraw @a[team=TeamD] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.nether.uneasy_alliance.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.nether.uneasy_alliance.title"},{"translate":"advancements.nether.uneasy_alliance.description"}]}]}}]}]}]
