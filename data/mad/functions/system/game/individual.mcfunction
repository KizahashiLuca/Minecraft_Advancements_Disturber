#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Timer
function mad:system/game/timer/individual/tick
function mad:system/game/timer/individual/general/tick

## Detect kill (Move time)
execute if predicate mad:phase/game/pvp_on as @a[predicate=mad:player/killer] at @s run function mad:system/game/detect_kill/individual

## Detect death
execute as @a[predicate=mad:player/dying] run function mad:system/game/detect_death/individual

## Set scoreboard
scoreboard players operation #mad NumAlive = #mad NumOfParticipants