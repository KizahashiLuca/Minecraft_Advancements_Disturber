#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - green
execute store result bossbar mad:bossbar/team/d max run scoreboard players get @s TimeLimit
execute store result bossbar mad:bossbar/team/d value run scoreboard players get @s Second
bossbar set mad:bossbar/team/d name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]