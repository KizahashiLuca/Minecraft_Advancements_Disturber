#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - blue
execute store result bossbar mad:bossbar_blue max run scoreboard players get @s TimeLimit
execute store result bossbar mad:bossbar_blue value run scoreboard players get @s Second
bossbar set mad:bossbar_blue name ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]