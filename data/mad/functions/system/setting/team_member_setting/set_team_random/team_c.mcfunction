#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set own team c
tag @s remove NotSetTeam
team join TeamC @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に設定されました。","color":"green"}]