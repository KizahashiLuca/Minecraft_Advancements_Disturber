#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1secs
scoreboard players add #mad CartInterval 1
execute if score #mad CartInterval matches 1000.. run scoreboard players remove #mad CartInterval 1000
function mad:system/setting/choose_minecart_interval/change_to