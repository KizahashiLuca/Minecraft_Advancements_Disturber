#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team c -> team d
scoreboard players operation #mad_team_d Second += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d TimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d GetTimeLimit += #mad_team_c SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"[キル報酬]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]