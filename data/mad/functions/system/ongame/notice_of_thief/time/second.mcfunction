#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Calculate time
scoreboard players remove @s ThiefSecond 1
scoreboard players set @s[scores={ThiefSecond=..-1}] ThiefSecond 0

## Execute time for beacon
execute as @s[scores={ThiefSecond=0}] run function mad:system/ongame/notice_of_thief/steal_item