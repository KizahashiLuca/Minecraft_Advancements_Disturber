#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Pause game
execute if score #mad Phase matches 19..22 run function mad:system/onpause/game_pause
execute unless score #mad Phase matches 19..22 run function mad:system/onpause/game_pause_reject