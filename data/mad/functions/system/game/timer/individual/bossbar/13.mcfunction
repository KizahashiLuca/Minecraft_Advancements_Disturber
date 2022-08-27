#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar_individual_13 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_individual_13 value run scoreboard players get @s Second
execute if predicate mad:system/game/timer/individual/second/gt_zero run bossbar set minecraft:bossbar_individual_13 name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"selector":"@s","color":"red","bold":true},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:system/game/timer/individual/second/le_zero run bossbar set minecraft:bossbar_individual_13 name ["",{"translate":"%s - 生存時間 終了","with":[{"selector":"@s","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]