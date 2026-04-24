#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アップグレード後のアイテムIDを取得
$data modify storage mad: item.armor_upgrader.equipment.$(type).next_id \
  set from storage mad: item.armor_upgrader.$(type).$(id).id
