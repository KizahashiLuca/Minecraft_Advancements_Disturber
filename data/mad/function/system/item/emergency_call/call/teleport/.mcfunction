#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集プレイヤー死亡時
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/dead/] at @s run function mad:system/item/emergency_call/call/teleport/dead {caller_number:'$(caller_number)'}

## 招集プレイヤー生存時
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/] at @s run function mad:system/item/emergency_call/call/teleport/accept with storage mad: item.emergency_call.tmp