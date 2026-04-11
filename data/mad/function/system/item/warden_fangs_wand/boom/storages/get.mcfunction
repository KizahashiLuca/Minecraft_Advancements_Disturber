#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ取得
data modify storage mad: item.warden_fangs_wand.tmp.boom set from storage mad: item.warden_fangs_wand.booms[0]

## ストレージ削除
data remove storage mad: item.warden_fangs_wand.booms[0]