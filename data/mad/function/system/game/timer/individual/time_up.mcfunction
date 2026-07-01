#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
function mad:message/game/time_up/individual

## 生存者のキル
kill @s

## タイムアップ時の詳細設定
function mad:system/game/detect_dying/death/hardcore/true
