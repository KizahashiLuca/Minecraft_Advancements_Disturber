#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー設置
#### マーカー
function mad:system/game/respawn_banner/construct/marker with storage mad: death
#### アーマースタンド
function mad:system/game/respawn_banner/construct/armor_stand with storage mad: death
#### ストレージ
function mad:system/game/respawn_banner/construct/storage with storage mad: death
#### プレイヤーの頭
function mad:system/game/respawn_banner/construct/player_head with storage mad: death
#### テキストディスプレイ
function mad:system/game/respawn_banner/construct/text_display with storage mad: death

## スコアボード設定
$scoreboard players set #mad TmpX $(x)
$scoreboard players set @p[tag=MAD_Player$(victim_number)] TmpX $(x)
$scoreboard players operation @p[tag=MAD_Player$(victim_number)] TmpX -= #mad PosX
$execute store result storage mad: death.x int 1.0 run scoreboard players get @p[tag=MAD_Player$(victim_number)] TmpX
$scoreboard players set #mad TmpZ $(z)
$scoreboard players set @p[tag=MAD_Player$(victim_number)] TmpZ $(z)
$scoreboard players operation @p[tag=MAD_Player$(victim_number)] TmpZ -= #mad PosZ
$execute store result storage mad: death.z int 1.0 run scoreboard players get @p[tag=MAD_Player$(victim_number)] TmpZ

## メッセージ
function mad:message/game/respawn_banner/construct with storage mad: death

## サイドバー
function mad:system/game/respawn_banner/construct/sidebar with storage mad: death

## ストレージ再設定
execute store result storage mad: death.x int 1.0 run scoreboard players get #mad TmpX
execute store result storage mad: death.z int 1.0 run scoreboard players get #mad TmpZ