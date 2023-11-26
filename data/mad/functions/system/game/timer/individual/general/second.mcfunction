#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect leaving in midgame
execute as @a[predicate=mad:player/alive] run scoreboard players operation @s GeneralSecond -= #mad GeneralSecond
execute as @a[predicate=mad:system/game/timer/individual/general/second/lt_zero] run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1

## Detect leaving in midgame
scoreboard players operation @a[predicate=mad:player/alive] GeneralSecond = #mad GeneralSecond