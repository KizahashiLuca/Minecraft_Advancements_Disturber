#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 各プレイヤーのエンダーチェストにプレイヤーの頭を配置
loot replace entity @s enderchest.0 loot mad:system/setting/team_member/player_head

## プレイヤー情報をストレージに格納
#### プレイヤー番号
execute store result storage mad: display_team_member.player.number int 1 run scoreboard players get @s PlayerNumber
#### プレイヤーID
data modify storage mad: display_team_member.player.name set from entity @s EnderItems[0].components.'minecraft:profile'.name