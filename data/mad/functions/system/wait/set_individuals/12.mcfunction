#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar
bossbar add minecraft:bossbar_individual_12 ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"selector":"@s","color":"red","bold":true},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar_individual_12 color white
bossbar set minecraft:bossbar_individual_12 style notched_10
bossbar set minecraft:bossbar_individual_12 visible true
execute store result bossbar minecraft:bossbar_individual_12 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_individual_12 value run scoreboard players get @s Second