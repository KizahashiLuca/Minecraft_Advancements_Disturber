#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Calculate time every tick
scoreboard players remove @s ThiefTick 1
scoreboard players set @s[scores={ThiefTick=..-1}] ThiefTick 19

## Calculate time every second
execute as @s[scores={ThiefTick=0}] run function mad:system/ongame/notice_of_thief/time/second