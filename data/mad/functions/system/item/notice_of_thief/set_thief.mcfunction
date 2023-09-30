#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags
tag @s add MAD_DetectThief
tag @s add MAD_Thief

## Send messages
execute if predicate mad:gamerules/match_mode/individual run function mad:system/item/notice_of_thief/messages/individual
execute if predicate mad:gamerules/match_mode/team run function mad:system/item/notice_of_thief/messages/team

## Set scoreboard
scoreboard players set @s ThiefTick 0
scoreboard players operation @s ThiefSecond = #mad ThiefSecond

## Remove tags
tag @a remove MAD_DetectThief
tag @a remove MAD_DetectThiefTeam