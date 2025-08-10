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
tellraw @s ['',{text:'[怪盗予告] あなたが死亡しているため、 アイテムを盗めませんでした。',color:'green'}]

## 全員へのメッセージ
$tellraw @a[tag=!MAD_Player$(thief_number)] ['',{translate:'[怪盗予告] 怪盗 %s が死亡しているため、 アイテムは盗まれませんでした。',with:[{selector:'@s'}],color:'green'}]