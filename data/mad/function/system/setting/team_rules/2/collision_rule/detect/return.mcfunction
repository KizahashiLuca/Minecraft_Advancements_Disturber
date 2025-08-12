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
kill @e[tag=MAD_TextDisplay_Setting_collisionRule]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 当たり判定変更メッセージ表示
execute if predicate mad:gamerule/team_rules/2/collision_rule/true run function mad:message/setting/team_rules/2/collision_rule/ {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/collision_rule/false run function mad:message/setting/team_rules/2/collision_rule/ {text:'なし',color:'dark_red'}

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_rules/2/root/display/

## フェーズ設定
function mad:phase/setting/team_rules/2/root

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction