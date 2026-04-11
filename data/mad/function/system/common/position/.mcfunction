#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ポジション算出
execute as @a run function mad:system/common/position/get_data
scoreboard players add @a Angle 225
scoreboard players add @a[scores={Angle=..0}] Angle 3600
scoreboard players operation @a Angle /= #mad 450

## ポジション表示
execute as @a run function mad:system/common/position/set_display