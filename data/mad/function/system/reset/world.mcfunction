#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムな生存者の場所に全員をテレポート
execute if entity @p[predicate=mad:player/alive/] run \
  tp @a @p[predicate=mad:player/alive/,sort=random]

## 難易度
difficulty peaceful

## 時刻
time set noon

## 天気
weather clear

## ストレージ
data remove storage mad: system
data remove storage mad: gamerule
data remove storage mad: setting
data remove storage mad: count_players
data remove storage mad: world_spawn
data remove storage mad: respawn_beacon
data remove storage mad: display_team_member
data remove storage mad: leave_team_member
data remove storage mad: care_package
data remove storage mad: death
data remove storage mad: individual
data remove storage mad: team

## エンティティ
kill @e[type=minecraft:marker]
kill @e[type=minecraft:interaction]
#kill @e[type=minecraft:block_display,tag=!MAD_RespawnBeacon]
kill @e[type=minecraft:item_display]
kill @e[type=minecraft:text_display]
kill @e[type=minecraft:chest_minecart,tag=MAD_CarePackage]
kill @e[predicate=mad:system/item/return_portal/armor_stand]
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## ワールド範囲をリセット
execute in minecraft:overworld run \
  worldborder center 0 0
execute in minecraft:overworld run \
  worldborder set 59999968
execute in minecraft:the_nether run \
  worldborder center 0 0
execute in minecraft:the_nether run \
  worldborder set 59999968
execute in minecraft:the_end run \
  worldborder center 0 0
execute in minecraft:the_end run \
  worldborder set 59999968

## 常時読み込みチャンクの削除
forceload remove all
