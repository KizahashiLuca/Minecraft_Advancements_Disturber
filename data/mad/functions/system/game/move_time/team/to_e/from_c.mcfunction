#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## team c -> team e
scoreboard players operation #mad_team_e Second += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_e TimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_e GetTimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_c Second -= #mad_team_c SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@s","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"[時間移動]  %s に %s%s 奪われました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]