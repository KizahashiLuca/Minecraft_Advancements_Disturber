#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤーの頭付与
$loot replace entity @p[tag=MAD_Player$(victim_number)] inventory.0 loot mad:system/setting/team_member/player_head

## ストレージ格納
$data modify storage mad: death.victim_id set from entity @p[tag=MAD_Player$(victim_number)] Inventory[0].components.'minecraft:profile'.name