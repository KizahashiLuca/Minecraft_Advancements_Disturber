#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/finish/message_stop

execute if score #mad NumAlive matches 0 run function mad:system/finish/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish/winner_detect
execute if score #mad NumAlive matches 2.. run function mad:system/finish/winner_none

function mad:system/finish/statics

## Reset game
function mad:system/finish/reset_game
gamemode adventure @a
