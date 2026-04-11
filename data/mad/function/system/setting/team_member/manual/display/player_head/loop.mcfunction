#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号の若い順から設定
execute as @a[predicate=mad:player/] if score @s PlayerNumber = #mad_player PlayerHeadNumber run function mad:system/setting/team_member/manual/display/player_head/set_player_head

## スコアボード設定
scoreboard players add #mad_player PlayerHeadNumber 1

## ループ
execute if score #mad_player PlayerHeadNumber <= #mad_player MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/player_head/loop