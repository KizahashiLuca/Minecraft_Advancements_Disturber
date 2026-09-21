#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 道具置換
$item replace entity @s weapon.$(type) \
  with minecraft:$(next_id)
$item modify entity @s weapon.$(type) \
  {\
    type: 'minecraft:set_components',\
    components: $(components),\
  }
