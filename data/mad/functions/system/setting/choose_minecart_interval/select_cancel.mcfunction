#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Reset choice
scoreboard players operation #mad CartInterval = #mad CartIntervalPrv

## Send messages
function mad:system/setting/choose_minecart_interval/send_message