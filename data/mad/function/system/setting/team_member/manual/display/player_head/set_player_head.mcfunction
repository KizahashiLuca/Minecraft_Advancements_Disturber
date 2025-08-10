#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー情報をストレージに格納
execute if score #mad ReloadDisplay matches 0 run function mad:system/setting/team_member/manual/display/player_head/set_storage/player_name

## 各プレイヤーの頭のアイテムエンティティを召喚
execute if score #mad ReloadDisplay matches 0 run function mad:system/setting/team_member/manual/display/player_head/summon_display with storage mad: display_team_member.player

## チーム情報をストレージに格納
function mad:system/setting/team_member/manual/display/player_head/set_storage/team_information

## 各プレイヤーの頭のアイテムエンティティを移動
function mad:system/setting/team_member/manual/display/player_head/get_storage with storage mad: display_team_member.player