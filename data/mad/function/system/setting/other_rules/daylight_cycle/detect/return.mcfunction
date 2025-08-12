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
execute at @s run playsound minecraft:ui.button.click ui @a

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_DaylightCycle]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 昼夜サイクル変更メッセージ表示
execute if predicate mad:gamerule/daylight_cycle/true run function mad:message/setting/other_rules/daylight_cycle/ {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/daylight_cycle/false run function mad:message/setting/other_rules/daylight_cycle/ {text:'なし',color:'dark_red'}

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/other_rules/root/display/

## フェーズ設定
function mad:phase/setting/other_rules/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction