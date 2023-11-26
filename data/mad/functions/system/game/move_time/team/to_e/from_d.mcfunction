#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## team d -> team e
scoreboard players operation #mad_team_e Second += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_e TimeLimit += #mad_team_d SecondPerSurvive
scoreboard players operation #mad_team_e GetTimeLimit += #mad_team_d SecondPerSurvive

## Send messages
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_d","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"selector":"@s","bold":true},{"score":{"name":"#mad_team_d","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]