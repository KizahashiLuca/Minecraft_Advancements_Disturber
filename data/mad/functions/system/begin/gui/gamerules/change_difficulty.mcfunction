#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Change difficulty
scoreboard players add #mad Difficulty 1
execute if score #mad Difficulty matches 4.. run scoreboard players set #mad Difficulty 1
function mad:system/begin/gui/gamerules/change_to