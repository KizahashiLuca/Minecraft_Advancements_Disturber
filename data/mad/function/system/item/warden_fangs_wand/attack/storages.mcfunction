#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
$data modify storage mad: item.warden_fangs_wand.tmp.wand set value {type:'$(type)'}

## ストレージ格納 - 現アイテム
$data modify storage mad: item.warden_fangs_wand.tmp.wand merge from entity @s $(nbt)

## ストレージ格納 - ウォーデンの牙番号
execute store result storage mad: item.warden_fangs_wand.tmp.boom.number int 1.0 run scoreboard players get #mad NumberOfSonicBooms
scoreboard players add #mad NumberOfSonicBooms 1

## ストレージ格納 - オーナープレイヤー番号
execute store result storage mad: item.warden_fangs_wand.tmp.boom.owner_number int 1.0 run scoreboard players get @s PlayerNumber

## ストレージ格納 - ウォーデンの牙の数
data modify storage mad: item.warden_fangs_wand.tmp.boom.count set value 0