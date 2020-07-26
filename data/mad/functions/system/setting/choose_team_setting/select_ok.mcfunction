#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set preview choice
scoreboard players operation #mad friendlyFirePrv = #mad friendlyFire
scoreboard players operation #mad collisionRulePrv = #mad collisionRule
scoreboard players operation #mad VisibleNamePrv = #mad VisibleName
scoreboard players operation #mad VisibleInvisPrv = #mad VisibleInvis
scoreboard players operation #mad VisibleDeathPrv = #mad VisibleDeath

## Send messages
function mad:system/setting/choose_team_setting/send_message