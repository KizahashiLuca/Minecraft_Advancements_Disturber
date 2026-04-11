#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 追加スコアボード設定
#### チーム戦
execute if predicate mad:gamerule/num_of_players/solo run scoreboard players set #mad IsTeam 0
execute if predicate mad:gamerule/num_of_players/not_solo run scoreboard players set #mad IsTeam 1
#### 設定フェーズ - 支援物資間隔
execute if predicate mad:gamerule/num_of_players/solo run scoreboard players set #mad CarePackageInterval 100
execute if predicate mad:gamerule/num_of_players/not_solo run scoreboard players set #mad CarePackageInterval 300
#### 設定フェーズ - ワールド範囲
execute if predicate mad:gamerule/num_of_players/solo run scoreboard players set #mad WorldBorder 1000
execute if predicate mad:gamerule/num_of_players/not_solo run scoreboard players set #mad WorldBorder 1500
#### 設定フェーズ - チーム戦ルール
execute if predicate mad:gamerule/num_of_players/solo run scoreboard players set #mad NumberOfTeams 0
execute if predicate mad:gamerule/num_of_players/not_solo run scoreboard players set #mad NumberOfTeams 2
