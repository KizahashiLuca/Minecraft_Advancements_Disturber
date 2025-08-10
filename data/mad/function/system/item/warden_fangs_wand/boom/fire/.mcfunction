#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 場所設定
$execute positioned $(posX) $(posY) $(posZ) rotated $(rotY) $(rotP) run summon minecraft:marker ~ ~ ~ {Tags:["MAD_TmpSonicBoomPosition"],CustomName:'{text:\'衝撃波\',color:\'aqua\'}',Rotation:[$(rotY),$(rotP)]}
execute as @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] at @s run tp @s ^ ^ ^1.5

## パーティクル表示
execute at @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] run particle minecraft:sonic_boom ~ ~ ~

## サウンドイベント
execute at @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 0.5 1.0 0.5

## ダメージ
$execute at @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] positioned ~ ~ ~ as @e[tag=!MAD_Player$(owner_number),type=!#mad:cannot_damage,distance=..3.0] run function mad:system/item/warden_fangs_wand/boom/fire/damages {owner_number:'$(owner_number)'}

## ポジション設定
execute as @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition] run function mad:system/item/warden_fangs_wand/boom/fire/positions

## ウォーデンの牙の数
function mad:system/item/warden_fangs_wand/boom/fire/counts

## マーカーキル
kill @e[type=minecraft:marker,tag=MAD_TmpSonicBoomPosition]