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
scoreboard players set @a[team=TeamB] AD_Nether_ride_strider_in_overworld_lava 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only minecraft:nether/ride_strider_in_overworld_lava
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.ride_strider_in_overworld_lava.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.ride_strider_in_overworld_lava.title"},{"translate":"advancements.nether.ride_strider_in_overworld_lava.description"}]}]}}]}]}]
