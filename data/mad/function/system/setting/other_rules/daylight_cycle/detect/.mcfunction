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
kill @e[tag=MAD_TextDisplay_Setting_DaylightCycle]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 昼夜サイクル変更
$scoreboard players set #mad DaylightCycle $(number)

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/other_rules/daylight_cycle/display/

## フェーズ設定
function mad:phase/setting/other_rules/daylight_cycle

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction