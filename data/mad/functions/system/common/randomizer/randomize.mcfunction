#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
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