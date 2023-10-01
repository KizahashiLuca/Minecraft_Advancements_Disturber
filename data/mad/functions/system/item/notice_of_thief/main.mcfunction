#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseNoticeOfThief 0

## Detect already thief
execute as @s[predicate=mad:system/item/notice_of_thief/thief] run function mad:system/item/notice_of_thief/messages/error
execute as @s[predicate=mad:system/item/notice_of_thief/not_thief] run function mad:system/item/notice_of_thief/set_thief

## Kill rabbit
kill @e[predicate=mad:system/item/notice_of_thief/monster_egg,sort=nearest,limit=1]