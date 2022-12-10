#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Timer
function mad:system/game/timer/individual/tick
function mad:system/game/timer/individual/general/tick

## Detect kill (Move time)
execute as @a[predicate=mad:player/killer] at @s run function mad:system/game/detect_kill/individual

## Detect death
execute as @a[predicate=mad:player/dying] run function mad:system/game/detect_death/individual

## Set scoreboard
scoreboard players operation #mad NumAlive = #mad NumOfParticipants