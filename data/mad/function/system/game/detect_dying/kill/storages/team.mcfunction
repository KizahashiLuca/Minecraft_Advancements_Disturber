#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 犠牲者
$execute as @s[predicate=mad:player/dying/$(victim_team)] run \
  function mad:system/game/detect_dying/kill/storages/victim/team \
    with storage mad: team.$(victim_team)
#### 攻撃者
$execute as @p[tag=mad_player$(killer_number)] run \
  function mad:system/game/detect_dying/kill/storages/killer/team \
    with storage mad: team.$(killer_team)

## 同チームでのキルかの確認
$execute if data storage mad: {death:{killer_team:"$(victim_team)"}} run \
  data modify storage mad: death.same_team set value 1
$execute unless data storage mad: {death:{killer_team:"$(victim_team)"}} run \
  data modify storage mad: death.same_team set value 0
