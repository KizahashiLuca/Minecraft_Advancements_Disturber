#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Recount
scoreboard players remove #mad RandomCount 1

## Randomize
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation #mad RandomAnswer = #mad RandomSeed

## Loop
execute unless score #mad RandomCount matches ..0 run function mad:system/random_generator/randomizing