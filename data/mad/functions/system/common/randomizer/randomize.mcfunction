#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Recount
scoreboard players remove @s RandomCount 1

## Randomize
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation @s RandomAnswer = #mad RandomSeed
scoreboard players operation @s RandomAnswer %= #mad 100

## Loop
execute as @s[predicate=mad:system/common/randomizer/gt_zero] run function mad:system/common/randomizer/randomize