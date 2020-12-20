#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Store time for bossbar - blue
execute store result bossbar minecraft:bossbar_blue max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_blue value run scoreboard players get @s Second
bossbar set minecraft:bossbar_blue name ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]