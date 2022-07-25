#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every second
execute as @s[predicate=mad:system/common/notice_of_thief/time/tick/eq_zero] run function mad:system/common/notice_of_thief/time/second

## Calculate time every tick
scoreboard players remove @s ThiefTick 1
scoreboard players set @s[predicate=mad:system/common/notice_of_thief/time/tick/lt_zero] ThiefTick 19