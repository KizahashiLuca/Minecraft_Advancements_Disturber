#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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
