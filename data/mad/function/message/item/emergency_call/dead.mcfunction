#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集プレイヤーへのメッセージ
tellraw @s ['',{text:'[緊急招集] あなたが死亡しているため、 緊急招集されませんでした。',color:'green'}]

## 全員へのメッセージ
$tellraw @a[tag=!MAD_Player$(caller_number),predicate=mad:player/team/$(call_team)] ['',{text:'[緊急招集] 招集したプレイヤーが死亡しているため、 緊急招集は実行されませんでした。',color:'green'}]