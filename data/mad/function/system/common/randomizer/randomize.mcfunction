#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Recount
scoreboard players remove @s RandomizerCount 1

## Randomize
scoreboard players operation #mad RandomizerSeed *= #mad RandomizerMultiplier
scoreboard players operation #mad RandomizerSeed %= #mad RandomizerModder
scoreboard players operation @s RandomizerResult = #mad RandomizerSeed
scoreboard players operation @s RandomizerResult %= #mad 100

## Loop
execute as @s[scores={RandomizerCount=1..}] run function mad:system/common/randomizer/randomize