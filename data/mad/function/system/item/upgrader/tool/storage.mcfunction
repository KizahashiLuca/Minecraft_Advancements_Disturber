#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
$data modify storage mad: item.tool_upgrader.equipment.tool \
  set value \
    {\
      type: '$(type)',\
      components: {},\
    }

## ストレージ格納 - 現アイテム
$data modify storage mad: item.tool_upgrader.equipment.tool \
  merge from entity @s $(nbt)
