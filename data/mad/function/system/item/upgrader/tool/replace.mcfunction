#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 防具置換
$item replace entity @s weapon.$(type) with minecraft:$(next_id)
$item modify entity @s weapon.$(type) {function:'minecraft:set_components',components:$(components)}