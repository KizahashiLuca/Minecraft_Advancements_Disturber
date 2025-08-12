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
tellraw @a [{text:'test game/detect_dying/kill/storages/killer/'}]
$data modify storage mad: death.killer set value '@p[tag=MAD_Player$(killer_number)]'
$data modify storage mad: death.killer_number set value $(killer_number)