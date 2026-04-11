#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ステータス効果
effect clear @s minecraft:slow_falling

## テレポート先召喚
$summon minecraft:marker ~ ~ ~ {Tags:['MAD_Teleporter','$(name)'],NoGravity:1b,Invulnerable:1b}
$data modify entity @e[type=minecraft:marker,tag=$(name),limit=1] Rotation set from entity @p[name=$(name)] Rotation