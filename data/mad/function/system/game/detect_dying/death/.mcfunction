#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ルートアイテム
loot give @s loot mad:system/game/first_items

## チーム分岐
$function mad:system/game/detect_dying/death/$(type)/

## メッセージ表示
function mad:message/game/detect_dying/death/ with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/death/title with storage mad: death

## ストレージ再設定
execute store result storage mad: death.x int 1.0 run scoreboard players get #mad TmpX
execute store result storage mad: death.z int 1.0 run scoreboard players get #mad TmpZ