#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Store time for bossbar - red
execute store result bossbar minecraft:bossbar_red max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_red value run scoreboard players get @s Second
bossbar set minecraft:bossbar_red name ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]