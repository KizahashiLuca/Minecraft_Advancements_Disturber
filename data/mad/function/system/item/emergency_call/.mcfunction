#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードリセット
scoreboard players set @s UseEmergencyCall 0

## ストレージ削除
data remove storage mad: item.emergency_call.tmp

## サウンドイベント
playsound minecraft:entity.zombie_horse.death block @a ~ ~ ~ 1.0 1.0 1.0
 
## ストレージ格納 - 緊急招集発信者プレイヤー番号
execute store result storage mad: item.emergency_call.tmp.caller_number int 1.0 run scoreboard players get @s PlayerNumber
data modify storage mad: item.emergency_call.callers append from storage mad: item.emergency_call.tmp.caller_number

## メッセージ表示
$function mad:system/item/emergency_call/$(type)

## ストレージ削除
data remove storage mad: item.emergency_call.tmp

## 関数スケジュール
schedule function mad:system/item/emergency_call/call/ 5s append

## マーカーキル
kill @e[type=minecraft:marker,tag=MAD_MinecartItem,tag=MAD_EmergencyCall,sort=nearest,limit=1]