#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 全員へのメッセージ
$tellraw @p[tag=MAD_Player$(caller_number)] ['',{text:'[緊急招集] 緊急招集しました。 5秒後に全員を今の場所に招集します。',color:'green'}]
$tellraw @a[tag=!MAD_Player$(caller_number)] ['',{translate:'[緊急招集]  %s から緊急招集を受けました。 5秒後に全員が招集されます。',with:[{selector:'@p[tag=MAD_Player$(caller_number)]'}],color:'green'}]