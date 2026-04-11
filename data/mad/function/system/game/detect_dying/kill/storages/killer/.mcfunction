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
$data modify storage mad: death.killer set value '@p[tag=MAD_Player$(killer_number)]'
$data modify storage mad: death.killer_number set value $(killer_number)
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/a] run data modify storage mad: death.killer_team set value 'a'
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/b] run data modify storage mad: death.killer_team set value 'b'
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/c] run data modify storage mad: death.killer_team set value 'c'
$execute as @p[tag=MAD_Player$(killer_number),predicate=mad:player/team/d] run data modify storage mad: death.killer_team set value 'd'