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
scoreboard players set @a[team=TeamE] AD_Husbandry_make_a_sign_glow 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only minecraft:husbandry/make_a_sign_glow
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.make_a_sign_glow.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.make_a_sign_glow.title"},{"translate":"advancements.husbandry.make_a_sign_glow.description"}]}]}}]}]}]
