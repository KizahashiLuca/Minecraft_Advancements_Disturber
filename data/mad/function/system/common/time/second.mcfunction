#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove #mad Second 1
execute if predicate mad:system/common/time/second/lt_zero run scoreboard players set #mad Second 59