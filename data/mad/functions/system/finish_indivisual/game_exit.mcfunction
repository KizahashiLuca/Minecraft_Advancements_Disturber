#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Send exit messages
function mad:system/finish_indivisual/message_exit

execute if score #mad NumAlive matches 0 run function mad:system/finish_indivisual/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish_indivisual/winner_detect

function mad:system/finish_indivisual/statics

## Reset game
function mad:system/finish_indivisual/reset_game
