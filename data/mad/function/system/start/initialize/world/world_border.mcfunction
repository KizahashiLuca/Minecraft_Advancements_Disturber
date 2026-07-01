#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ワールド範囲
$execute in minecraft:$(dimension) run \
  worldborder center $(x) $(z)
$execute in minecraft:$(dimension) run \
  worldborder set 16
