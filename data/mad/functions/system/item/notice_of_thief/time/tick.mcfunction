#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every second
execute as @s[predicate=mad:system/item/notice_of_thief/time/tick/eq_zero] run function mad:system/item/notice_of_thief/time/second

## Calculate time every tick
scoreboard players remove @s ThiefTick 1
scoreboard players set @s[predicate=mad:system/item/notice_of_thief/time/tick/lt_zero] ThiefTick 19