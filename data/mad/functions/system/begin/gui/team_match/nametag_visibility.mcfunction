#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Change nametagVisibility
scoreboard players add #mad VisibleName 1
execute if score #mad VisibleName matches 2.. run scoreboard players set #mad VisibleName 0

## Set inventory
function mad:system/begin/gui/team_match/change_to