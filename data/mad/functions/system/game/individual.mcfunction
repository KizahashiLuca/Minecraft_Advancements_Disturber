#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Timer
function mad:system/game/timer/individual/tick
function mad:system/game/timer/individual/general/tick

## Detect death
execute as @a[predicate=mad:player/dying] run function mad:system/game/detect_death/individual

## 