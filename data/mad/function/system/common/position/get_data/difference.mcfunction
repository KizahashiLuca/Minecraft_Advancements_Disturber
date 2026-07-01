#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 中心座標との差分を抽出
$scoreboard players $(x_operator) @s PosX $(abs_x)
$scoreboard players $(z_operator) @s PosZ $(abs_z)
