#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 蘇生検知用アーマースタンド召喚
$summon minecraft:armor_stand ~ ~ ~ {Tags:$(Tags),data:{name:'$(name)'},NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:0b,DisabledSlots:4144959,CustomName:'$(name)のリスポーンビーコン',CustomNameVisible:1b}

## スコアボード設定
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## タグ設定
data modify entity @s data.Tags append value 'MAD_InitializedRespawnBanner'