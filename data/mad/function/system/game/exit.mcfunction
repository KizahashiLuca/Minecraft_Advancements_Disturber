#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
execute if predicate mad:gamerule/match_mode/individual/solo run function mad:message/game/exit/ {text:'プレイヤーが死亡'}
execute if predicate mad:gamerule/match_mode/individual/not_solo run function mad:message/game/exit/ {text:'勝者が決定'}
execute if predicate mad:gamerule/match_mode/team run function mad:message/game/exit/ {text:'勝者が決定'}

## スコアボード設定
scoreboard players set #mad ExitTrigger 1