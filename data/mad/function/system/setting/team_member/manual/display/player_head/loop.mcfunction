#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号の若い順から設定
execute as @a[predicate=mad:player/] if score @s PlayerNumber = #mad_player PlayerHeadNumber run function mad:system/setting/team_member/manual/display/player_head/set_player_head

## スコアボード設定
scoreboard players add #mad_player PlayerHeadNumber 1

## ループ
execute if score #mad_player PlayerHeadNumber <= #mad_player MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/player_head/loop