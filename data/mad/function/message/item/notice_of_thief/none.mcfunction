#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗へのメッセージ
$execute if entity @p[tag=MAD_Player$(victim_number)] run tellraw @s ['',{translate:'[怪盗予告]  %s の手持ちアイテムが無いため、 アイテムを盗めませんでした。',with:[{selector:'@p[tag=MAD_Player$(victim_number)]'}],color:'green'}]
$execute unless entity @p[tag=MAD_Player$(victim_number)] run tellraw @s ['',{text:'[怪盗予告] 盗み先を指定できず、 アイテムを盗めませんでした。',color:'green'}]

## 全員へのメッセージ
$execute if entity @p[tag=MAD_Player$(victim_number)] run tellraw @a[tag=!MAD_Player$(thief_number)] ['',{translate:'[怪盗予告]  %s の手持ちアイテムが無いため、 %s によってアイテムを盗めませんでした。',with:[{selector:'@p[tag=MAD_Player$(victim_number)]'},{selector:'@s'}],color:'green'}]
$execute unless entity @p[tag=MAD_Player$(victim_number)] run tellraw @a[tag=!MAD_Player$(thief_number)] ['',{translate:'[怪盗予告] 盗み先を指定できず、 %s によってアイテムは盗まれませんでした。',with:[{selector:'@s'}],color:'green'}]