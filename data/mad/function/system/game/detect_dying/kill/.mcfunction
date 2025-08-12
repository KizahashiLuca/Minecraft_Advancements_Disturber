#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################
tellraw @a [{text:'test game/detect_dying/kill/'}]

## ストレージ格納
#### 犠牲者
function mad:system/game/detect_dying/kill/storages/victim/ with storage mad: death
#### 攻撃者
function mad:system/game/detect_dying/kill/storages/killer/ with storage mad: death
#### マッチモードごと
$function mad:system/game/detect_dying/kill/$(type) with storage mad: death

## PvP分岐
execute if predicate mad:system/game/timer/pvp/mode/pvp_on run function mad:system/game/detect_dying/kill/pvp_on
execute if predicate mad:system/game/timer/pvp/mode/pvp_off run function mad:system/game/detect_dying/kill/pvp_off
execute if predicate mad:system/game/timer/pvp/mode/pvp_off run loot give @s loot mad:system/game/first_items

## リスポーンバナー設置
execute if predicate mad:system/game/timer/pvp/mode/pvp_on run function mad:system/game/respawn_banner/construct/ with storage mad: death

## メッセージ表示
function mad:message/game/detect_dying/kill/ with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/kill/title with storage mad: death