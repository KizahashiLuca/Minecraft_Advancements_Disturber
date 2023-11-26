#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send exit messages
function mad:system/finish/exit_game/messages

execute if predicate mad:system/finish/exit_game/winner/one run function mad:system/finish/winner/one
execute if predicate mad:system/finish/exit_game/winner/draw run function mad:system/finish/winner/none
execute if predicate mad:system/finish/exit_game/winner/detect run function mad:system/finish/winner/detect

## Statics
function mad:system/finish/statics

## Reset game
function mad:system/finish/reset_game/main
