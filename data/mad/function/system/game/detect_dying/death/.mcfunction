#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム分岐
$function mad:system/game/detect_dying/death/$(type)/

## スコアボード設定
$scoreboard players set #mad TmpX $(x)
$scoreboard players set @p[tag=MAD_Player$(victim_number)] TmpX $(x)
$scoreboard players operation @p[tag=MAD_Player$(victim_number)] TmpX -= #mad PosX
$execute store result storage mad: death.x int 1.0 run scoreboard players get @p[tag=MAD_Player$(victim_number)] TmpX
$scoreboard players set #mad TmpZ $(z)
$scoreboard players set @p[tag=MAD_Player$(victim_number)] TmpZ $(z)
$scoreboard players operation @p[tag=MAD_Player$(victim_number)] TmpZ -= #mad PosZ
$execute store result storage mad: death.z int 1.0 run scoreboard players get @p[tag=MAD_Player$(victim_number)] TmpZ

## メッセージ表示
function mad:message/game/detect_dying/death/ with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/death/title with storage mad: death

## ストレージ再設定
execute store result storage mad: death.x int 1.0 run scoreboard players get #mad TmpX
execute store result storage mad: death.z int 1.0 run scoreboard players get #mad TmpZ