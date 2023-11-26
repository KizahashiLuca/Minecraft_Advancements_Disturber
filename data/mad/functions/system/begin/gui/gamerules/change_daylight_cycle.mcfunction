#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Change daylight cycle
scoreboard players add #mad DaylightCycle 1
execute if score #mad DaylightCycle matches 2.. run scoreboard players set #mad DaylightCycle 0
function mad:system/begin/gui/gamerules/change_to