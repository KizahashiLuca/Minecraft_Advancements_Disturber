#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseNoticeOfThief 0

## Add tags
tag @s add MAD_DetectThief
tag @s add MAD_Thief

## Send messages
execute if predicate mad:gamerules/match_mode/individual run function mad:system/common/notice_of_thief/messages/individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/common/notice_of_thief/messages/team

## Set scoreboard
scoreboard players set @s ThiefTick 0
scoreboard players operation @s ThiefSecond = #mad ThiefSecond

## Remove tags
tag @a remove MAD_DetectThief
tag @a remove MAD_DetectThiefTeam

## Kill rabbit
kill @e[predicate=mad:system/common/notice_of_thief/monster_egg,sort=nearest,limit=1]