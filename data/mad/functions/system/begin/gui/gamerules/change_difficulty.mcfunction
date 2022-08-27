#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Change difficulty
scoreboard players add #mad Difficulty 1
execute if score #mad Difficulty matches 4.. run scoreboard players set #mad Difficulty 1
function mad:system/begin/gui/gamerules/change_to