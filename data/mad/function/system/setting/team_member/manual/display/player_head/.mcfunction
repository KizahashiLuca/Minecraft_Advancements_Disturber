#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数
function mad:system/common/count_players/

## スコアボード設定
scoreboard players set #mad_player PlayerHeadNumber 1
scoreboard players set #mad_indie_player PlayerHeadNumber 1
scoreboard players set #mad_team_a PlayerHeadNumber 1
scoreboard players set #mad_team_b PlayerHeadNumber 1
scoreboard players set #mad_team_c PlayerHeadNumber 1
scoreboard players set #mad_team_d PlayerHeadNumber 1

## プレイヤーディスプレイ
execute positioned ~ ~0.75 ~ run function mad:system/setting/team_member/manual/display/player_head/loop

## スコアボード設定
scoreboard players set #mad ReloadDisplay 0