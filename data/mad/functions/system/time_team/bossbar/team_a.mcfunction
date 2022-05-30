#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - red
execute store result bossbar minecraft:bossbar_red max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_red value run scoreboard players get @s Second
bossbar set minecraft:bossbar_red name ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]