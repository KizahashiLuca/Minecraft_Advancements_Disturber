#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗へのメッセージ
tellraw @s ['',{text:'[怪盗予告] あなたが死亡しているため、 アイテムを盗めませんでした。',color:'green'}]

## 全員へのメッセージ
$tellraw @a[tag=!MAD_Player$(thief_number)] ['',{translate:'[怪盗予告] 怪盗 %s が死亡しているため、 アイテムは盗まれませんでした。',with:[{selector:'@s'}],color:'green'}]