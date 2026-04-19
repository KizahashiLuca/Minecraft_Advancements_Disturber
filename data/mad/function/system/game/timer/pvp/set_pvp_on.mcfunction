#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## PvPフラグを立てる
scoreboard players set #mad PvP 1

## サウンドイベント
execute as @a \
  at @s run \
  playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1 1
