#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンドイベント
$execute at @p[tag=MAD_Player$(thief_number)] run playsound minecraft:entity.allay.ambient_without_item block @a ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
$function mad:message/item/notice_of_thief/none {thief_number:'$(thief_number)',victim_number:'$(victim_number)'}