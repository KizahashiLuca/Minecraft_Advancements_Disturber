#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
execute if predicate mad:gamerule/match_mode/individual/solo run function mad:message/game/exit/ {text:'プレイヤーが死亡'}
execute if predicate mad:gamerule/match_mode/individual/not_solo run function mad:message/game/exit/ {text:'勝者が決定'}
execute if predicate mad:gamerule/match_mode/team run function mad:message/game/exit/ {text:'勝者が決定'}

## スコアボード設定
scoreboard players set #mad ExitTrigger 1