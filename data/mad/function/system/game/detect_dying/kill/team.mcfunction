#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 犠牲者
$execute as @s[predicate=mad:player/dying/$(victim_team)] run function mad:system/game/detect_dying/kill/storages/victim/team with storage mad: team.$(victim_team)
#### 攻撃者
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/a] run function mad:system/game/detect_dying/kill/storages/killer/team with storage mad: team.a
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/b] run function mad:system/game/detect_dying/kill/storages/killer/team with storage mad: team.b
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/c] run function mad:system/game/detect_dying/kill/storages/killer/team with storage mad: team.c
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/d] run function mad:system/game/detect_dying/kill/storages/killer/team with storage mad: team.d