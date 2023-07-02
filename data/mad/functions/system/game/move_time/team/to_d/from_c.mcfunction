#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## team c -> team d
scoreboard players operation #mad_team_d Second += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d TimeLimit += #mad_team_c SecondPerSurvive
scoreboard players operation #mad_team_d GetTimeLimit += #mad_team_c SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"緑チーム","color":"green","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"緑チーム","color":"green","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_c","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]