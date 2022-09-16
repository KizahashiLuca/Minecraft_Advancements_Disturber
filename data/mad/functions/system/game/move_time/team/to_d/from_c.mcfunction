#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## team c -> team d
scoreboard players operation #mad_team_d Second += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d TimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d GetTimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_c Second -= #mad_team_c SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]