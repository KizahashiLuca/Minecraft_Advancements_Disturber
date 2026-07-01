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
function mad:system/game/detect_dying/kill/storages/victim/individual \
  with storage mad: death
#### 攻撃者
function mad:system/game/detect_dying/kill/storages/killer/individual \
  with storage mad: death
