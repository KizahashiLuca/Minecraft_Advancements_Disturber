#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamE] AD_hb_catalogue 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only minecraft:husbandry/complete_catalogue
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.complete_catalogue.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.complete_catalogue.title"},{"translate":"advancements.husbandry.complete_catalogue.description"}]}]}}]}]}]
