#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1secs
scoreboard players add #mad CartInterval 1
execute if score #mad CartInterval matches 1000.. run scoreboard players remove #mad CartInterval 1000
function mad:system/setting/choose_minecart_interval/change_to