#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Reset choice
scoreboard players operation #mad WorldBorder = #mad WorldBorderPrv

## Send messages
function mad:system/setting/choose_world_border/send_message