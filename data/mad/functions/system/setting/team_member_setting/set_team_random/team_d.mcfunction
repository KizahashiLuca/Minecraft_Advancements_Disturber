#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set own team d
tag @s remove NotSetTeam
team join TeamD @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]