#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Change nametagVisibility
scoreboard players add #mad VisibleName 1
execute if score #mad VisibleName matches 2.. run scoreboard players set #mad VisibleName 0

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to