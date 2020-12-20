#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Send exit messages
function mad:system/finish_team/message_exit

execute if score #mad NumAlive matches 0 run function mad:system/finish_team/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish_team/winner_detect

function mad:system/finish_team/statics

## Reset game
function mad:system/finish_team/reset_game
