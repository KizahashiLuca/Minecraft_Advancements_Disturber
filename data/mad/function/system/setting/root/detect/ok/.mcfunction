#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click ui @a

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_Root]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## スコアボード設定
scoreboard players set #mad ReloadDisplay 0

## 次フェーズ準備
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ run function mad:system/setting/root/detect/ok/individual
#### チーム戦 手動設定
execute if predicate mad:gamerule/team_rules/1/set_team_manual/true run function mad:system/setting/root/detect/ok/manual
#### チーム戦 ランダム設定
execute if predicate mad:gamerule/team_rules/1/set_team_manual/false run function mad:system/setting/root/detect/ok/random

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction
