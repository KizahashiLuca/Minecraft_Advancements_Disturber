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
kill @e[tag=MAD_TextDisplay_Setting_MatchMode]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 対戦形式変更メッセージ表示
execute if predicate mad:gamerule/match_mode/individual/solo run function mad:message/setting/match_mode/ {text:'ソロ',color:'dark_blue'}
execute if predicate mad:gamerule/match_mode/individual/not_solo run function mad:message/setting/match_mode/ {text:'個人',color:'dark_red'}
execute if predicate mad:gamerule/match_mode/team run function mad:message/setting/match_mode/ {text:'チーム',color:'dark_green'}

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/root/display/

## フェーズ設定
function mad:phase/setting/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction