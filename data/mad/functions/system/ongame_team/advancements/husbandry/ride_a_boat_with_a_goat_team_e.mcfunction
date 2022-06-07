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
scoreboard players set @a[team=TeamE] AD_Husbandry_ride_a_boat_with_a_goat 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only minecraft:husbandry/ride_a_boat_with_a_goat
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.title"},{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.description"}]}]}}]}]}]
