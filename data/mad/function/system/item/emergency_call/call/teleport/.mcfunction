#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集プレイヤー死亡時
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/dead/] at @s run function mad:system/item/emergency_call/call/teleport/dead {caller_number:'$(caller_number)'}

## 招集プレイヤー生存時
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/] at @s run function mad:system/item/emergency_call/call/teleport/accept with storage mad: item.emergency_call.tmp