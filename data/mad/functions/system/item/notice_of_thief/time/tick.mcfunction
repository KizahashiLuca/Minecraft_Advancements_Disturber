#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every second
execute as @s[predicate=mad:system/item/notice_of_thief/time/tick/eq_zero] run function mad:system/item/notice_of_thief/time/second

## Calculate time every tick
scoreboard players remove @s ThiefTick 1
scoreboard players set @s[predicate=mad:system/item/notice_of_thief/time/tick/lt_zero] ThiefTick 19