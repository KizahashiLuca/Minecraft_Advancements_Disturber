#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad CartInterval 10
execute if score #mad CartInterval matches 1000.. run scoreboard players remove #mad CartInterval 1000
function mad:system/setting/choose_minecart_interval/change_to