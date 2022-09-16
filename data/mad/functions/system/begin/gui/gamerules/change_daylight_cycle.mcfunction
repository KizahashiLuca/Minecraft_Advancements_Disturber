#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Change daylight cycle
scoreboard players add #mad DaylightCycle 1
execute if score #mad DaylightCycle matches 2.. run scoreboard players set #mad DaylightCycle 0
function mad:system/begin/gui/gamerules/change_to