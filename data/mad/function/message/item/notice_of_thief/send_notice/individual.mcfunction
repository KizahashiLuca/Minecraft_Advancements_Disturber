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
$tellraw @a[tag=MAD_Player$(thief_number)] ['',{text:'[怪盗予告] 怪盗予告しました。 5秒後に誰かからアイテムを盗みます。',color:'green'}]

## 全員へのメッセージ
$tellraw @a[tag=!MAD_Player$(thief_number)] ['',{text:'[怪盗予告] 怪盗予告が誰かから出されました。 5秒後に誰かのアイテムが盗まれます。',color:'green'}]