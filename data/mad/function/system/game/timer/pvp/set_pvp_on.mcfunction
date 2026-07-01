#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## PvPフラグを立てる
scoreboard players set #mad PvP 1

## サウンドイベント
execute as @a \
  at @s run \
  playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1 1
