#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集
$teleport @a[predicate=mad:player/team/$(call_team)] @p[tag=MAD_Player$(caller_number)]

## サウンドイベント
$execute at @p[tag=MAD_Player$(caller_number)] run playsound minecraft:entity.zombie_horse.ambient block @a
$execute at @p[tag=!MAD_Player$(caller_number),predicate=mad:player/team/$(call_team)] run playsound minecraft:entity.zombie_horse.ambient block @a

## メッセージ表示
$function mad:message/item/emergency_call/accept {caller_number:'$(caller_number)',call_team:'$(call_team)'}