#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム分岐
$function mad:system/game/detect_dying/death/$(type)/

## メッセージ表示
function mad:message/game/detect_dying/death/ with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/death/title with storage mad: death

## ストレージ再設定
execute store result storage mad: death.x int 1.0 run scoreboard players get #mad TmpX
execute store result storage mad: death.z int 1.0 run scoreboard players get #mad TmpZ