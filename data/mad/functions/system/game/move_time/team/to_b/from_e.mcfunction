#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## team e -> team b
scoreboard players operation #mad_team_b Second += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_b TimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_b GetTimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_e Second -= #mad_team_e SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]