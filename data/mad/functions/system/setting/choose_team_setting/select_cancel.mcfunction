#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Reset choice
scoreboard players operation #mad friendlyFire = #mad friendlyFirePrv
scoreboard players operation #mad collisionRule = #mad collisionRulePrv
scoreboard players operation #mad VisibleName = #mad VisibleNamePrv
scoreboard players operation #mad VisibleInvis = #mad VisibleInvisPrv
scoreboard players operation #mad VisibleDeath = #mad VisibleDeathPrv

## Send messages
function mad:system/setting/choose_team_setting/send_message