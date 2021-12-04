#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Pause game
execute if score #mad Phase matches 19..22 run function mad:system/onpause/game_pause
execute unless score #mad Phase matches 19..22 run function mad:system/onpause/game_pause_reject