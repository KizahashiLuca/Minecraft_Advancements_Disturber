#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納 - ウォーデンの牙の数
execute store result score #mad SonicBoomCount run data get storage mad: item.warden_fangs_wand.tmp.boom.count
scoreboard players add #mad SonicBoomCount 1
execute store result storage mad: item.warden_fangs_wand.tmp.boom.count int 1.0 run scoreboard players get #mad SonicBoomCount
