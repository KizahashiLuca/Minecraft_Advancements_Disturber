#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set own team a
tag @s remove NotSetTeam
team join TeamA @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"赤チーム","color":"red","bold":true},{"text":" に設定されました。","color":"green"}]