#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team e -> team c
scoreboard players operation #mad_team_c Second += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_c TimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_c GetTimeLimit += #mad_team_e SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"[キル報酬]  %s をキルしたため %s%s 報酬を得ました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[死亡通知]  %s がされたため %s に %s%s 報酬を取られました。","with":[{"selector":"@s","bold":true},{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]