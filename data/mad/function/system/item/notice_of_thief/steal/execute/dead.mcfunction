#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンドイベント
$execute at @p[tag=MAD_Player$(thief_number)] run playsound minecraft:entity.allay.ambient_without_item block @a ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
$function mad:message/item/notice_of_thief/dead {thief_number:'$(thief_number)'}