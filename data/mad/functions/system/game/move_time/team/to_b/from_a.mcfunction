#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## team a -> team b
scoreboard players operation #mad_team_b Second += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_b TimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_b GetTimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_a Second -= #mad_team_a SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]