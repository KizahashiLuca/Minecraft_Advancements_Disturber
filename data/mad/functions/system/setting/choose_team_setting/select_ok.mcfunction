#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad friendlyFirePrv = #mad friendlyFire
scoreboard players operation #mad collisionRulePrv = #mad collisionRule
scoreboard players operation #mad VisibleNamePrv = #mad VisibleName
scoreboard players operation #mad VisibleInvisPrv = #mad VisibleInvis
scoreboard players operation #mad VisibleDeathPrv = #mad VisibleDeath
scoreboard players operation #mad SetTeamManualPrv = #mad SetTeamManual
scoreboard players operation #mad TeamNumberPrv = #mad TeamNumber
scoreboard players operation #mad BeaconNumberPrv = #mad BeaconNumber
scoreboard players operation #mad RespawnTimePrv = #mad RespawnTime

## Send messages
function mad:system/setting/choose_team_setting/send_message