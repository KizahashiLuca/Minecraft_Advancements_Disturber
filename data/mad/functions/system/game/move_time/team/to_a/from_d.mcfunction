#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team d -> team a
scoreboard players operation #mad_team_a Second += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_a TimeLimit += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_a GetTimeLimit += #mad_team_d SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"[キル報酬]  %s をキルしたため %s%s 報酬を得ました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_d","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]