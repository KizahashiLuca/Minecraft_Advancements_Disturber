#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players remove #mad Second 1
execute as @a[predicate=mad:player/alive/] run scoreboard players operation @s GeneralSecond -= #mad Second
execute as @a[predicate=mad:system/game/timer/individual/general/second/gt_zero] run scoreboard players operation @s Second -= @s GeneralSecond

## タイムアップ
execute as @a[predicate=mad:system/game/timer/individual/second/eq_zero] at @s run function mad:system/game/timer/individual/time_up

## ボスバー設定
execute as @a[predicate=mad:player/alive/] run function mad:system/game/timer/individual/set_storage

## サウンドイベント
execute as @a[predicate=mad:system/game/timer/individual/second/from_4_to_10] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/from_1_to_3] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/eq_zero] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## 中間離脱検出処理
scoreboard players operation @a[predicate=mad:player/alive/] GeneralSecond = #mad Second