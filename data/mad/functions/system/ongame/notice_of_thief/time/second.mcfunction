#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s ThiefSecond 1
scoreboard players set @s[scores={ThiefSecond=..-1}] ThiefSecond 0

## Execute time for beacon
execute as @s[scores={ThiefSecond=0}] run function mad:system/ongame/notice_of_thief/steal_item