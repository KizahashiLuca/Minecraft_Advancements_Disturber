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
function mad:system/finish/message_exit

execute if score #mad NumAlive matches 0 run function mad:system/finish/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish/winner_detect

function mad:system/finish/statics

## Reset game
function mad:system/finish/reset_game
gamemode adventure @a
