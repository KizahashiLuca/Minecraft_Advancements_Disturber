#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号設定用スコアボード設定
scoreboard players set #mad PlayerNumber 1
scoreboard players set @a[predicate=mad:player/] PlayerNumber 0

## プレイヤー番号設定
function mad:system/common/numbering/set
