#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team b -> team d
scoreboard players operation #mad_team_d Second += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_d TimeLimit += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_d GetTimeLimit += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_b Second -= #mad_team_b SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]