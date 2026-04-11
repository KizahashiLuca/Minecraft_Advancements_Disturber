#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗
$execute at @p[tag=MAD_Player$(thief_number)] run summon minecraft:item ~ ~ ~ {Item:{id:'$(id)',count:$(count),components:$(components)},PickupDelay:0s}

## 被害
$item replace entity @p[tag=MAD_Player$(victim_number)] hotbar.$(Slot) with minecraft:air

## サウンドイベント
$execute at @p[tag=MAD_Player$(thief_number)] run playsound minecraft:entity.allay.ambient_with_item block @a ~ ~ ~ 1.0 1.0 1.0
$execute at @p[tag=MAD_Player$(victim_number)] run playsound minecraft:entity.allay.hurt block @a ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
$function mad:message/item/notice_of_thief/accept {thief_number:'$(thief_number)',victim_number:'$(victim_number)'}