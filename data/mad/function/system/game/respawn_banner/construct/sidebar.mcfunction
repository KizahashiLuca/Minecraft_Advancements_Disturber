#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバー
$execute unless predicate mad:respawn_banner/sidebar/$(victim_team) run scoreboard players set スペース $(victim_sidebar) -5
$execute unless predicate mad:respawn_banner/sidebar/$(victim_team) run scoreboard players set 【リスポーンバナー座標】 $(victim_sidebar) -6
$scoreboard players display numberformat スペース $(victim_sidebar) blank
$scoreboard players display name スペース $(victim_sidebar) ['']
$scoreboard players display numberformat 【リスポーンバナー座標】 $(victim_sidebar) blank
$scoreboard players display name 【リスポーンバナー座標】 $(victim_sidebar) [{text:'【リスポーンバナー座標】',color:'$(victim_color)',bold:true}]
$scoreboard players operation @s $(victim_sidebar) = $(victim_address) $(victim_sidebar)
$scoreboard players remove $(victim_address) $(victim_sidebar) 1
$scoreboard players display numberformat @s $(victim_sidebar) fixed [{text:'[$(x), $(y), $(z)]',color:'green'}]