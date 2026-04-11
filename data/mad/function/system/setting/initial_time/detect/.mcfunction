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
kill @e[tag=MAD_TextDisplay_Setting_InitialTime]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 初期時間変更
$scoreboard players $(operator) #mad InitialTime $(number)
execute if score #mad InitialTime matches ..0 run scoreboard players add #mad InitialTime 1000
execute if score #mad InitialTime matches 1001.. run scoreboard players remove #mad InitialTime 1000

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/initial_time/display/

## フェーズ設定
function mad:phase/setting/initial_time

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction