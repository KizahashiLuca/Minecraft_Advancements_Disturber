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
kill @e[tag=MAD_TextDisplay_Setting_WorldBorder]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## ワールド範囲変更
$scoreboard players $(operator) #mad WorldBorder $(number)
execute if score #mad WorldBorder matches ..0 run scoreboard players add #mad WorldBorder 10000
execute if score #mad WorldBorder matches 10001.. run scoreboard players remove #mad WorldBorder 10000

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/world_border/display/

## フェーズ設定
function mad:phase/setting/world_border

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction