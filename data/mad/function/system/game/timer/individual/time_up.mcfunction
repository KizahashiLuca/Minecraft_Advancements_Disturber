#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
function mad:message/game/time_up/individual

## 生存者のキル
kill @s
gamemode spectator @s

## スコアボード設定
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_on
scoreboard players set @s Second 0