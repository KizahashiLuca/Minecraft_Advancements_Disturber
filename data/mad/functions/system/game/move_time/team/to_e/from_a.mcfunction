#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team a -> team e
scoreboard players operation #mad_team_e Second += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_e TimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_e GetTimeLimit += #mad_team_a SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[キル報酬]  %s をキルしたため %s%s 報酬を得ました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"[死亡通知]  %s がされたため %s に %s%s 報酬を取られました。","with":[{"selector":"@s","bold":true},{"text":"紫チーム","color":"purple","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]