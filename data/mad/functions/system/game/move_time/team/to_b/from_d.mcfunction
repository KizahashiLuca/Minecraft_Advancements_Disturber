#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team d -> team b
scoreboard players operation #mad_team_b Second += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_b TimeLimit += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_b GetTimeLimit += #mad_team_d SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[キル報酬]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_d","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]