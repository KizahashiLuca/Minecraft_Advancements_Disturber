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
scoreboard players set @a[team=TeamE] AD_ad_bullseye 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only minecraft:adventure/bullseye
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.bullseye.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.bullseye.title"},{"translate":"advancements.adventure.bullseye.description"}]}]}}]}]}]
