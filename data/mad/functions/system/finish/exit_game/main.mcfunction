#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
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
