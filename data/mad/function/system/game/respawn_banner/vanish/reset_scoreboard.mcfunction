#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバー削除 - リスポーンバナー座標
$scoreboard players reset @p[tag=$(head_tag),predicate=mad:player/team/$(victim_team)] $(victim_sidebar)

## サイドバー削除 - リスポーンバナー情報ヘッダ
$execute unless score @p[predicate=mad:player/team/$(victim_team)] $(victim_sidebar) matches ..-6 run scoreboard players reset スペース $(victim_sidebar)
$execute unless score @p[predicate=mad:player/team/$(victim_team)] $(victim_sidebar) matches ..-6 run scoreboard players reset 【リスポーンバナー座標】 $(victim_sidebar)