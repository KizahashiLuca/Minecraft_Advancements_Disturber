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
tellraw @s ['',{text:'[緊急招集] あなたのチームが招集されました。',color:'green'}]

## 全員へのメッセージ
$tellraw @a[tag=!MAD_Player$(caller_number),predicate=mad:player/team/$(call_team)] ['',{translate:'[緊急招集]  %s の場所に招集されました。',with:[{selector:'@p[tag=MAD_Player$(caller_number)]'}],color:'green'}]