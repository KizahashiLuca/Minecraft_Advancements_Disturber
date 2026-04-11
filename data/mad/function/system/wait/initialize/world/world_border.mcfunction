#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ワールド範囲
$execute in minecraft:$(dimension) run worldborder center $(x) $(z)
$execute in minecraft:$(dimension) run worldborder set $(world_border)
worldborder add 1 0