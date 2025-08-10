#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ステータス効果
effect clear @s minecraft:slow_falling

## テレポート先召喚
$summon minecraft:marker ~ ~ ~ {Tags:['MAD_Teleporter','$(name)'],NoGravity:1b,Invulnerable:1b}
$data modify entity @e[type=minecraft:marker,tag=$(name),limit=1] Rotation set from entity @p[name=$(name)] Rotation