#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 犠牲者のIDをストレージに格納
#### 犠牲者のプレイヤーの頭をインベントリに付与
loot replace entity @s inventory.0 loot mad:system/wait/player_head
#### 付与されたプレイヤーの頭から犠牲者のIDをストレージに格納
data modify storage mad: death.victim_id \
  set from entity @s Inventory[0].components.'minecraft:profile'.name
