#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad friendlyFire = #mad friendlyFirePrv
scoreboard players operation #mad collisionRule = #mad collisionRulePrv
scoreboard players operation #mad VisibleName = #mad VisibleNamePrv
scoreboard players operation #mad VisibleInvis = #mad VisibleInvisPrv
scoreboard players operation #mad VisibleDeath = #mad VisibleDeathPrv
scoreboard players operation #mad SetTeamManual = #mad SetTeamManualPrv
scoreboard players operation #mad TeamNumber = #mad TeamNumberPrv
scoreboard players operation #mad BeaconNumber = #mad BeaconNumberPrv
scoreboard players operation #mad RespawnTime = #mad RespawnTimePrv

## Send messages
function mad:system/setting/choose_team_setting/send_message