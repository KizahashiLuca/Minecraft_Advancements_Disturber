#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ取得
function mad:system/item/warden_fangs_wand/boom/storages/get

## ソニックブーム発射
function mad:system/item/warden_fangs_wand/boom/fire/ with storage mad: item.warden_fangs_wand.tmp.boom

## ストレージ格納
execute unless data storage mad: {item:{warden_fangs_wand:{tmp:{boom:{count:31}}}}} run function mad:system/item/warden_fangs_wand/boom/storages/set

## スケジュール
execute if data storage mad: item.warden_fangs_wand.booms[0] run schedule function mad:system/item/warden_fangs_wand/boom/ 1t append

## ストレージ削除
function mad:system/item/warden_fangs_wand/boom/storages/remove