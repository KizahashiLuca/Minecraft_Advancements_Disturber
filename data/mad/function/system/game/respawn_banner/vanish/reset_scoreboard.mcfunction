#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバー削除 - リスポーンバナー座標
$scoreboard players reset @p[tag=$(head_tag),predicate=mad:player/team/$(victim_team)] $(victim_sidebar)

## サイドバー削除 - リスポーンバナー情報ヘッダ
$execute unless score @p[predicate=mad:player/team/$(victim_team)] $(victim_sidebar) matches ..-6 run scoreboard players reset スペース $(victim_sidebar)
$execute unless score @p[predicate=mad:player/team/$(victim_team)] $(victim_sidebar) matches ..-6 run scoreboard players reset 【リスポーンバナー座標】 $(victim_sidebar)