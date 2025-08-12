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
scoreboard players set @s UseArmorUpgrader 0

## ストレージ初期化
data modify storage mad: item.armor_upgrader.equipment set value {head:{id:'minecraft:air',components:{},type:'head'},chest:{id:'minecraft:air',components:{},type:'chest'},legs:{id:'minecraft:air',components:{},type:'legs'},feet:{id:'minecraft:air',components:{},type:'feet'}}

## ストレージ格納
data modify storage mad: item.armor_upgrader.equipment merge from entity @s equipment

## サウンドイベント
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## アップグレード
function mad:system/item/upgrader/armor/upgrade with storage mad: item.armor_upgrader.equipment.head
function mad:system/item/upgrader/armor/replace with storage mad: item.armor_upgrader.equipment.head
function mad:system/item/upgrader/armor/upgrade with storage mad: item.armor_upgrader.equipment.chest
function mad:system/item/upgrader/armor/replace with storage mad: item.armor_upgrader.equipment.chest
function mad:system/item/upgrader/armor/upgrade with storage mad: item.armor_upgrader.equipment.legs
function mad:system/item/upgrader/armor/replace with storage mad: item.armor_upgrader.equipment.legs
function mad:system/item/upgrader/armor/upgrade with storage mad: item.armor_upgrader.equipment.feet
function mad:system/item/upgrader/armor/replace with storage mad: item.armor_upgrader.equipment.feet

## ストレージ削除
data remove storage mad: item.armor_upgrader.equipment

## メッセージ表示
function mad:message/item/upgrader/armor

## マーカーキル
kill @e[type=minecraft:marker,tag=MAD_MinecartItem,tag=MAD_ArmorUpgrader,sort=nearest,limit=1]