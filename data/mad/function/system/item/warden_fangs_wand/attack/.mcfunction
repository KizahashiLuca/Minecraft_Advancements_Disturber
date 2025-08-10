#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0.
#####################################

## ウォーデンの牙の杖検出
$function mad:system/item/warden_fangs_wand/attack/storages {type:'$(type)',nbt:'$(nbt)'}

## 場所設定
execute at @s run summon minecraft:marker ~ ~1.62 ~ {Tags:["MAD_TmpSonicBoomPosition"]}
execute as @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] run function mad:system/item/warden_fangs_wand/attack/positions
execute as @s run function mad:system/item/warden_fangs_wand/attack/rotations
kill @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition]

## サウンドイベント
execute unless data storage mad: {item:{warden_fangs_wand:{tmp:{wand:{components:{'minecraft:damage':2}}}}}} run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0 1.0
execute if data storage mad: {item:{warden_fangs_wand:{tmp:{wand:{components:{'minecraft:damage':2}}}}}} run playsound minecraft:entity.item.break player @a ~ ~ ~ 1.0 1.0 1.0

## アイテム消費
$execute if data storage mad: {item:{warden_fangs_wand:{tmp:{wand:{components:{'minecraft:damage':2}}}}}} run item replace entity @s weapon.$(type) with minecraft:air 1
$execute unless data storage mad: {item:{warden_fangs_wand:{tmp:{wand:{components:{'minecraft:damage':2}}}}}} run item modify entity @s weapon.$(type) [{function:'minecraft:set_damage',damage:-0.34,add:true}]

## ストレージ格納
data modify storage mad: item.warden_fangs_wand.booms append from storage mad: item.warden_fangs_wand.tmp.boom

## ソニックブーム発射
schedule function mad:system/item/warden_fangs_wand/boom/ 1t append

## メッセージ表示
function mad:message/item/warden_fangs_wand/