#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Store time for bossbar - green
execute store result bossbar minecraft:bossbar_green max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_green value run scoreboard players get @s Second
bossbar set minecraft:bossbar_green name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]