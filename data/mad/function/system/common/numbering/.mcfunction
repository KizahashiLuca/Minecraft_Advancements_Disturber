#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号設定用スコアボード設定
scoreboard players set #mad PlayerNumber 1
scoreboard players set @a[predicate=mad:player/] PlayerNumber 0

## プレイヤー番号設定
function mad:system/common/numbering/set