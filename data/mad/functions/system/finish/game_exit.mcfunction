#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Send exit messages
function mad:system/finish/message_exit

execute if score #mad NumAlive matches 0 run function mad:system/finish/winner_none
execute if score #mad NumAlive matches 1 run function mad:system/finish/winner_detect

## Reset game
function mad:system/finish/reset_game
