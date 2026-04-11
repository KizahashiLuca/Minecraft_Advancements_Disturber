#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ変更メッセージ表示
function mad:message/wait/

## スコアボード設定
scoreboard players set #mad NumberOfTeams 0

## チーム数変更時に無いチームのメンバーは離脱
function mad:system/setting/team_member/manual/display/leave_team/

## ディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_member/manual/display/
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/wait/display/initial

## 次フェーズ初期化
function mad:system/wait/initialize/