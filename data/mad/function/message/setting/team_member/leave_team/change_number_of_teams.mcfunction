#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム数変更時メッセージ表示
tellraw @a ['',{text:'[チーム編成設定] チーム数変更のため以下チームを解体',color:'green'}]

## 各チーム人数検知
execute if predicate mad:gamerule/team_rules/1/number_of_teams/le_2 if score #mad_team_c NumberOfPlayers matches 1.. run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'黄チーム',bold:true,color:'yellow'}]
execute if predicate mad:gamerule/team_rules/1/number_of_teams/le_3 if score #mad_team_d NumberOfPlayers matches 1.. run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'緑チーム',bold:true,color:'green'}]