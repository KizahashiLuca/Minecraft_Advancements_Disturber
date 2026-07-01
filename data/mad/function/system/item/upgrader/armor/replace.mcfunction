#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 防具置換
$item replace entity @s armor.$(type) \
  with minecraft:$(next_id)
$item modify entity @s armor.$(type) \
  {\
    function: 'minecraft:set_components',\
    components: $(components),\
  }
