#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードリセット
scoreboard players set @s UseFungusStick 0

## ストレージ削除
data remove storage mad: item.warden_fangs_wand.tmp

## ウォーデンの牙の杖
execute as @s[predicate=mad:system/item/warden_fangs_wand/mainhand] run function mad:system/item/warden_fangs_wand/attack/ {type:'mainhand',nbt:'SelectedItem'}
execute as @s[predicate=mad:system/item/warden_fangs_wand/offhand] run function mad:system/item/warden_fangs_wand/attack/ {type:'offhand',nbt:'equipment.offhand'}

## ストレージ削除
data remove storage mad: item.warden_fangs_wand.tmp