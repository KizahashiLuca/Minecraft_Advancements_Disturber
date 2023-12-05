#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## team a -> team c
scoreboard players operation #mad_team_c Second += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_c TimeLimit += #mad_team_a SecondPerSurvive
scoreboard players operation #mad_team_c GetTimeLimit += #mad_team_a SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_a","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]