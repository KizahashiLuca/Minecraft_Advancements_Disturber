#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Recount
scoreboard players remove #mad RandomCount 1

## Randomize
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation #mad RandomAnswer = #mad RandomSeed

## Loop
execute unless score #mad RandomCount matches ..0 run function mad:system/random_generator/randomizing