#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad friendlyFire = #mad friendlyFirePrv
scoreboard players operation #mad collisionRule = #mad collisionRulePrv
scoreboard players operation #mad VisibleName = #mad VisibleNamePrv
scoreboard players operation #mad VisibleInvis = #mad VisibleInvisPrv
scoreboard players operation #mad VisibleDeath = #mad VisibleDeathPrv

## Send messages
function mad:system/begin/gui/team_match/other_rules/send_message