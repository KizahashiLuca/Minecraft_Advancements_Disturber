#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s ThiefSecond 1
scoreboard players set @s[predicate=mad:system/item/notice_of_thief/time/second/lt_zero] ThiefSecond 0

## Execute time for beacon
execute as @s[predicate=mad:system/item/notice_of_thief/time/second/eq_zero] run function mad:system/item/notice_of_thief/execute/steal