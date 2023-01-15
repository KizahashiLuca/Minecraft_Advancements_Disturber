#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team e -> team a
scoreboard players operation #mad_team_a Second += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_a TimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_a GetTimeLimit += #mad_team_e SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"[キル報酬]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]