#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set own team b
tag @s remove NotSetTeam
team join TeamB @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"青チーム","color":"blue","bold":true},{"text":" に設定されました。","color":"green"}]