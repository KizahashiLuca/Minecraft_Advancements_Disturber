#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad friendlyFirePrv = #mad friendlyFire
scoreboard players operation #mad collisionRulePrv = #mad collisionRule
scoreboard players operation #mad VisibleNamePrv = #mad VisibleName
scoreboard players operation #mad VisibleInvisPrv = #mad VisibleInvis
scoreboard players operation #mad VisibleDeathPrv = #mad VisibleDeath

## Send messages
function mad:system/begin/gui/team_match/other_rules/send_message