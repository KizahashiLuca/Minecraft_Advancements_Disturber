#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Send stop messages
function mad:system/finish_team/message_stop

execute if score #mad NumAlive matches 0 run function mad:system/finish_team/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish_team/winner_detect
execute if score #mad NumAlive matches 2.. run function mad:system/finish_team/winner_none

function mad:system/finish_team/statics

## Reset game
function mad:system/finish_team/reset_game
gamemode adventure @a
