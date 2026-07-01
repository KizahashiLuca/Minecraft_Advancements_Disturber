#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティデータから最後に攻撃したプレイヤーのUUIDを保持
execute store result score #mad LastHurtByPlayerUUID0 run \
  data get entity @s last_hurt_by_player[0]
execute store result score #mad LastHurtByPlayerUUID1 run \
  data get entity @s last_hurt_by_player[1]
execute store result score #mad LastHurtByPlayerUUID2 run \
  data get entity @s last_hurt_by_player[2]
execute store result score #mad LastHurtByPlayerUUID3 run \
  data get entity @s last_hurt_by_player[3]

## 保持したUUIDから最後に攻撃したプレイヤー番号を取得
execute as @a[predicate=mad:player/] \
  if score @s PlayerUUID0 = #mad LastHurtByPlayerUUID0 \
  if score @s PlayerUUID1 = #mad LastHurtByPlayerUUID1 \
  if score @s PlayerUUID2 = #mad LastHurtByPlayerUUID2 \
  if score @s PlayerUUID3 = #mad LastHurtByPlayerUUID3 run \
  scoreboard players operation #mad LastHurtByPlayerNumber = @s PlayerNumber

## 加害者のプレイヤー番号をストレージに保持
execute store result storage mad: death.killer_number int 1 run \
  scoreboard players get #mad LastHurtByPlayerNumber
