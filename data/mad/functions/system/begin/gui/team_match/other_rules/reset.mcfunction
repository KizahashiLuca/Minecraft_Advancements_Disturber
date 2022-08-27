#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 1
scoreboard players set #mad VisibleInvis 1
scoreboard players set #mad VisibleDeath 1

## Set inventory
function mad:system/begin/gui/team_match/other_rules/change_to