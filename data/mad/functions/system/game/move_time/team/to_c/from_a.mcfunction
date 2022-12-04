#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## team a -> team c
scoreboard players operation #mad_team_c Second += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_c TimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_c GetTimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_a Second -= #mad_team_a SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]