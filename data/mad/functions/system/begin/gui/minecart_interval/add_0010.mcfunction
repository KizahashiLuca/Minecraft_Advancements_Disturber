#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad CartInterval 10
execute if predicate mad:system/begin/gui/minecart_interval/ge_thousand run scoreboard players remove #mad CartInterval 1000
function mad:system/begin/gui/minecart_interval/change_to