#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - green
execute store result bossbar minecraft:bossbar_green max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_green value run scoreboard players get @s Second
bossbar set minecraft:bossbar_green name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]