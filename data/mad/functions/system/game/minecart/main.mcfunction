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
scoreboard players remove @s Second 1
scoreboard players operation あと SecondSummon = @s Second

## Time over
execute as @s[predicate=mad:system/game/minecart/second/eq_zero] run function mad:system/game/minecart/summon_minecart