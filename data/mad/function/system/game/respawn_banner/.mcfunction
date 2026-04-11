#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナーの挙動 - アーマースタンドを壊した時
execute as @e[predicate=mad:respawn_banner/item/not_initialized] run function mad:system/game/respawn_banner/reinitialize/initialize
execute as @e[predicate=mad:respawn_banner/item/not_reinitialized] run function mad:system/game/respawn_banner/reinitialize/reset
execute as @e[predicate=mad:respawn_banner/item/discard] run function mad:system/game/respawn_banner/reinitialize/discard

## リスポーンバナーの挙動 - アーマースタンド本体
execute as @e[predicate=mad:respawn_banner/armor_stand/not_initialized] at @s run function mad:system/game/respawn_banner/revive/initialize with entity @s data
execute as @e[predicate=mad:respawn_banner/armor_stand/detector] at @s run function mad:system/game/respawn_banner/revive/ with entity @s data

## プレイヤーの頭が取得されればマーカー削除
execute as @e[predicate=mad:respawn_banner/corpse] run function mad:system/game/respawn_banner/vanish/