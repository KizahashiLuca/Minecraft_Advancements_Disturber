#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 防具置換
$item replace entity @s weapon.$(type) with minecraft:$(next_id)
$item modify entity @s weapon.$(type) {function:'minecraft:set_components',components:$(components)}