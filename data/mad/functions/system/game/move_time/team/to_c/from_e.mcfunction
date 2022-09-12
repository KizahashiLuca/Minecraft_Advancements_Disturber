#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## team e -> team c
scoreboard players operation #mad_team_c Second += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_c TimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_c GetTimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_e Second -= #mad_team_e SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]