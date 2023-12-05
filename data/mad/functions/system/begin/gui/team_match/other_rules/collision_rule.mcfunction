#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Change collisionRule
scoreboard players add #mad collisionRule 1
execute if score #mad collisionRule matches 2.. run scoreboard players set #mad collisionRule 0

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to