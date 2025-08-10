#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 追加時間付与
tag @a[predicate=mad:player/alive/,sort=nearest,limit=1] add MAD_GiveTimeRandomly
execute if predicate mad:gamerule/match_mode/individual/ as @a[predicate=mad:player/give_time/] run function mad:system/game/care_package/explode/give_time/individual
execute if predicate mad:gamerule/match_mode/team as @a[predicate=mad:player/give_time/a] run function mad:system/game/care_package/explode/give_time/team with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team as @a[predicate=mad:player/give_time/b] run function mad:system/game/care_package/explode/give_time/team with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team as @a[predicate=mad:player/give_time/c] run function mad:system/game/care_package/explode/give_time/team with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team as @a[predicate=mad:player/give_time/d] run function mad:system/game/care_package/explode/give_time/team with storage mad: team.d
tag @a remove MAD_GiveTimeRandomly

## ストレージ格納
execute store result storage mad: care_package.drop.number int 1 run data get entity @s UUID[0] 1

## 爆破
playsound minecraft:entity.firework_rocket.twinkle ambient @a
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
kill @s

## 次期支援物資場所決定
function mad:system/game/care_package/explode/next_position with storage mad: care_package.drop