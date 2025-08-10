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
tellraw @a ['',{text:'[チーム編成設定] チーム数変更のため以下チームからランダムでメンバーを離脱',color:'green'}]

## 各チーム人数検知
#### 3チームへ変更
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 if score #mad_team_a NumberOfPlayers > #mad_team_a MaxNumberOfPlayers run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'赤チーム',bold:true,color:'red'}]
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 if score #mad_team_b NumberOfPlayers > #mad_team_b MaxNumberOfPlayers run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'青チーム',bold:true,color:'blue'}]
#### 4チームへ変更
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 if score #mad_team_a NumberOfPlayers > #mad_team_a MaxNumberOfPlayers run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'赤チーム',bold:true,color:'red'}]
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 if score #mad_team_b NumberOfPlayers > #mad_team_b MaxNumberOfPlayers run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'青チーム',bold:true,color:'blue'}]
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 if score #mad_team_c NumberOfPlayers > #mad_team_c MaxNumberOfPlayers run tellraw @a ['', {text:'[チーム編成設定] ・',color:'green'},{text:'黄チーム',bold:true,color:'yellow'}]