#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Send exit messages
function mad:system/finish_individual/message_exit

execute if score #mad NumAlive matches 0 run function mad:system/finish_individual/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish_individual/winner_detect

function mad:system/finish_individual/statics

## Reset game
function mad:system/finish_individual/reset_game
gamemode adventure @a
