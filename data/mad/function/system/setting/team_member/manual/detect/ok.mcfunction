#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1.0 1.0 1.0

## チーム編成ランダム設定へ変更
scoreboard players set #mad SetTeamManual 0
function mad:message/wait/

## チーム数変更時に無いチームのメンバーは離脱
function mad:system/setting/team_member/manual/display/leave_team/

## チーム編成ランダム設定
function mad:system/setting/team_member/random/set_member

## ディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/wait/display/initial

## 待機フェーズへ移動
function mad:system/wait/initialize/

## リロード用スコアボード設定
scoreboard players set #mad ReloadDisplay 1

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction