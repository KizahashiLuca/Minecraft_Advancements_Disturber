#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s ThiefSecond 1
scoreboard players set @s[predicate=mad:system/item/notice_of_thief/time/second/lt_zero] ThiefSecond 0

## Execute time for beacon
execute as @s[predicate=mad:system/item/notice_of_thief/time/second/eq_zero] run function mad:system/item/notice_of_thief/execute/steal