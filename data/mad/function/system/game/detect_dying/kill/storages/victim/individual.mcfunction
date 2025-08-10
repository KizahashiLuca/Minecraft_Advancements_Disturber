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
data modify storage mad: death.victim_color set value 'green'
$data modify storage mad: death.victim_address set value '@p[tag=MAD_Player$(victim_number)]'
$data modify storage mad: death.victim_target_selector set value '@p[tag=MAD_Player$(victim_number)]'