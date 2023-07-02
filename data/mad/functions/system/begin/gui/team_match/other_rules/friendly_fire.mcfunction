#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Change friendlyFire
scoreboard players add #mad friendlyFire 1
execute if score #mad friendlyFire matches 2.. run scoreboard players set #mad friendlyFire 0

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to