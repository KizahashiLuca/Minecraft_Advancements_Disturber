#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1secs
scoreboard players add #mad CartInterval 1
execute if predicate mad:system/begin/gui/minecart_interval/ge_thousand run scoreboard players remove #mad CartInterval 1000
function mad:system/begin/gui/minecart_interval/change_to