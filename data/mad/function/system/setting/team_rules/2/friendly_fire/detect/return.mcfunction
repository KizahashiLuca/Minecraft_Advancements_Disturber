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
kill @e[tag=MAD_TextDisplay_Setting_friendlyFire]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## フレンドリーファイア変更メッセージ表示
execute if predicate mad:gamerule/team_rules/2/friendly_fire/true run function mad:message/setting/team_rules/2/friendly_fire/ {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/friendly_fire/false run function mad:message/setting/team_rules/2/friendly_fire/ {text:'なし',color:'dark_red'}

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_rules/2/root/display/

## フェーズ設定
function mad:phase/setting/team_rules/2/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction