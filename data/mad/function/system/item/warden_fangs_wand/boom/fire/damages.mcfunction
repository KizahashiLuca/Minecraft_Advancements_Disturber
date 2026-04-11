#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ダメージ
$execute if predicate mad:gamerule/difficulty/peaceful run damage @s 3.0 minecraft:magic by @p[tag=MAD_Player$(owner_number)]
$execute if predicate mad:gamerule/difficulty/easy run damage @s 6.0 minecraft:magic by @p[tag=MAD_Player$(owner_number)]
$execute if predicate mad:gamerule/difficulty/normal run damage @s 10.0 minecraft:magic by @p[tag=MAD_Player$(owner_number)]
$execute if predicate mad:gamerule/difficulty/hard run damage @s 15.0 minecraft:magic by @p[tag=MAD_Player$(owner_number)]
$execute if predicate mad:gamerule/difficulty/hardcore run damage @s 15.0 minecraft:magic by @p[tag=MAD_Player$(owner_number)]