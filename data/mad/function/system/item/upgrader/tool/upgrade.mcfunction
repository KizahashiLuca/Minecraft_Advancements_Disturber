#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アップグレード後のアイテムIDを取得
$data modify storage mad: item.tool_upgrader.equipment.tool.next_id \
  set from storage mad: item.tool_upgrader.$(id).id
