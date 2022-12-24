#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseNoticeOfThief 0

## Detect already thief
execute as @s[predicate=mad:system/item/notice_of_thief/thief] run function mad:system/item/notice_of_thief/messages/error
execute as @s[predicate=mad:system/item/notice_of_thief/not_thief] run function mad:system/item/notice_of_thief/set_thief

## Kill rabbit
kill @e[predicate=mad:system/item/notice_of_thief/monster_egg,sort=nearest,limit=1]