#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Change deathMessageVisibility
scoreboard players add #mad VisibleDeath 1
execute if score #mad VisibleDeath matches 2.. run scoreboard players set #mad VisibleDeath 0

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to