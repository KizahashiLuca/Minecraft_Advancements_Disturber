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
kill @e[tag=MAD_TextDisplay_Setting_deathMessageVisibility]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 死亡メッセージ変更
$scoreboard players set #mad deathMessageVisibility $(number)

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_rules/2/death_message_visibility/display/

## フェーズ設定
function mad:phase/setting/team_rules/2/death_message_visibility

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction