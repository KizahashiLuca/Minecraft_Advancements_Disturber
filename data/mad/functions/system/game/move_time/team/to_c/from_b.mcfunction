#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## team b -> team c
scoreboard players operation #mad_team_c Second += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_c TimeLimit += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_c GetTimeLimit += #mad_team_b SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"黄チーム","color":"yellow","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]