#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set own team d
tag @s remove NotSetTeam
team join TeamD @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]