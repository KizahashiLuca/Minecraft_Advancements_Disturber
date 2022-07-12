#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - yellow
execute store result bossbar mad:bossbar_yellow max run scoreboard players get @s TimeLimit
execute store result bossbar mad:bossbar_yellow value run scoreboard players get @s Second
bossbar set mad:bossbar_yellow name ["",{"text":"黄チーム ","color":"yellow","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]