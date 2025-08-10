#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ポジション算出
execute as @a run function mad:system/common/position/get_data
scoreboard players add @a Angle 225
scoreboard players add @a[scores={Angle=..0}] Angle 3600
scoreboard players operation @a Angle /= #mad 450

## ポジション表示
execute as @a run function mad:system/common/position/set_display