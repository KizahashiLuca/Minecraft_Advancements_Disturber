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

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_BonusTimeOfAdvancements]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 追加時間変更メッセージ表示
function mad:message/setting/bonus_time_of_advancements/

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/root/display/

## フェーズ設定
function mad:phase/setting/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction