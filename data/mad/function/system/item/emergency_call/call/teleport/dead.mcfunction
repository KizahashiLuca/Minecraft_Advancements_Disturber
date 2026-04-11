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
$execute at @p[tag=MAD_Player$(caller_number)] run playsound minecraft:entity.zombie_horse.hurt block @a

## メッセージ表示
$function mad:message/item/emergency_call/dead {caller_number:'$(caller_number)'}