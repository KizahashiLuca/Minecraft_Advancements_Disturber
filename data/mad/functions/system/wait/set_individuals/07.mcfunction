#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar
bossbar add minecraft:bossbar_individual_07 ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"selector":"@s","color":"red","bold":true},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar_individual_07 color white
bossbar set minecraft:bossbar_individual_07 style notched_10
bossbar set minecraft:bossbar_individual_07 visible true
execute store result bossbar minecraft:bossbar_individual_07 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_individual_07 value run scoreboard players get @s Second