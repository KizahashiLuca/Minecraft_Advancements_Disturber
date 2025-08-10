#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集
$teleport @a[predicate=mad:player/team/$(call_team)] @p[tag=MAD_Player$(caller_number)]

## サウンドイベント
$execute at @p[tag=MAD_Player$(caller_number)] run playsound minecraft:entity.zombie_horse.ambient block @a ~ ~ ~ 1.0 1.0 1.0
$execute at @p[tag=!MAD_Player$(caller_number),predicate=mad:player/team/$(call_team)] run playsound minecraft:entity.zombie_horse.ambient block @a ~ ~ ~ 1.0 2.0 1.0

## メッセージ表示
$function mad:message/item/emergency_call/accept {caller_number:'$(caller_number)',call_team:'$(call_team)'}