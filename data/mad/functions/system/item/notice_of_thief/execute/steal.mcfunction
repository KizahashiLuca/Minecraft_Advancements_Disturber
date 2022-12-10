#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags
tag @s add MAD_DetectThief
execute if predicate mad:gamerules/match_mode/individual run function mad:system/item/notice_of_thief/execute/add_tags/individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/item/notice_of_thief/execute/add_tags/team
tag @p[predicate=mad:system/item/notice_of_thief/set_steal_player,sort=random] add MAD_StolenPlayer

## Set scoreboard
scoreboard players set @s StealResult 0

## Steal item - thief is alive
execute as @s[predicate=mad:system/item/notice_of_thief/detect_alive_thief] at @s run function mad:system/item/notice_of_thief/execute/thief_is_alive

## Steal item - thief is dead
execute as @s[predicate=mad:system/item/notice_of_thief/detect_dead_thief] at @s run function mad:system/item/notice_of_thief/execute/thief_is_dead

## Set scoreboard
scoreboard players set @s StealResult 0
scoreboard players set @s ThiefTick 0
scoreboard players set @s ThiefSecond 5

## Remove a tag
tag @s remove MAD_Thief
tag @a remove MAD_DetectThief
tag @a remove MAD_StolenPlayer
tag @a remove MAD_NotStealPlayer