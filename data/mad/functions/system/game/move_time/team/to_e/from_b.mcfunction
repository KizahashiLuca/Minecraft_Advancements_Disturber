#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## team b -> team e
scoreboard players operation #mad_team_e Second += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_e TimeLimit += #mad_team_b SecondPerSurvive
scoreboard players operation #mad_team_e GetTimeLimit += #mad_team_b SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_b","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]