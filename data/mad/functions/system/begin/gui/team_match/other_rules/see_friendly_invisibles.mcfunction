#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Change seeFriendlyInvisibles
scoreboard players add #mad VisibleInvis 1
execute if score #mad VisibleInvis matches 2.. run scoreboard players set #mad VisibleInvis 0

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to