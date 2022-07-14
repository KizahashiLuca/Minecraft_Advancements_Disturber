#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar
bossbar add mad:bossbar/individual/04 ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"selector":"@s","color":"red","bold":true},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set mad:bossbar/individual/04 color white
bossbar set mad:bossbar/individual/04 style notched_10
bossbar set mad:bossbar/individual/04 visible true
execute store result bossbar mad:bossbar/individual/04 max run scoreboard players get @s TimeLimit
execute store result bossbar mad:bossbar/individual/04 value run scoreboard players get @s Second