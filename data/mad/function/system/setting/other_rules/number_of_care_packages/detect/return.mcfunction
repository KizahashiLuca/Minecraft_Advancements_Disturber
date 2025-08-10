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
kill @e[tag=MAD_TextDisplay_Setting_NumberOfCarePackages]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 支援物資投下数変更メッセージ表示
function mad:message/setting/other_rules/number_of_care_packages/

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/other_rules/root/display/

## フェーズ設定
function mad:phase/setting/other_rules/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction