#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Add 10secs
scoreboard players add #mad CartInterval 10
execute if score #mad CartInterval matches 1000.. run scoreboard players remove #mad CartInterval 1000
function mad:system/setting/choose_minecart_interval/change_to