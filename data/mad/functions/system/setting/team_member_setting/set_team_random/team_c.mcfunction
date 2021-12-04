#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set own team c
tag @s remove NotSetTeam
team join TeamC @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に設定されました。","color":"green"}]