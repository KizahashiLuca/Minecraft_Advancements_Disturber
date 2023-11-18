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
scoreboard players remove @s Second 1
scoreboard players operation 投下まであと: Sidebar = @s Second

## Time over
execute as @s[predicate=mad:system/game/minecart/second/eq_zero] run function mad:system/game/minecart/summon_minecart