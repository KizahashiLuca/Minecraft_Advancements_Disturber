#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 100secs
scoreboard players add #mad CartInterval 100
execute if predicate mad:system/begin/gui/minecart_interval/ge_thousand run scoreboard players remove #mad CartInterval 1000
function mad:system/begin/gui/minecart_interval/change_to