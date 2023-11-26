#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## team e -> team b
scoreboard players operation #mad_team_b Second += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_b TimeLimit += #mad_team_e SecondPerSurvive
scoreboard players operation #mad_team_b GetTimeLimit += #mad_team_e SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"青チーム","color":"blue","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"青チーム","color":"blue","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_e","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]