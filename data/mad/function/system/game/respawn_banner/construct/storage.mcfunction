#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 犠牲者のIDをストレージに格納
#### 犠牲者のプレイヤーの頭をインベントリに付与
$loot replace entity @p[tag=mad_player$(victim_number)] inventory.0 loot mad:system/wait/player_head
#### 付与されたプレイヤーの頭から犠牲者のIDをストレージに格納
$data modify storage mad: death.victim_id \
  set from entity @p[tag=mad_player$(victim_number)] Inventory[0].components.'minecraft:profile'.name
