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
kill @e[tag=MAD_TextDisplay_Setting_BonusTimeOfAdvancements]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 追加時間変更
$scoreboard players $(operator) #mad BonusTimeOfAdvancements $(number)
execute if score #mad BonusTimeOfAdvancements matches ..0 run scoreboard players add #mad BonusTimeOfAdvancements 1000
execute if score #mad BonusTimeOfAdvancements matches 1001.. run scoreboard players remove #mad BonusTimeOfAdvancements 1000

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/bonus_time_of_advancements/display/

## フェーズ設定
function mad:phase/setting/bonus_time_of_advancements

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction