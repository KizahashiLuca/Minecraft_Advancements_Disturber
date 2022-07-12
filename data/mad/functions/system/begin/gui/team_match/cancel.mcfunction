#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad friendlyFire = #mad friendlyFirePrv
scoreboard players operation #mad collisionRule = #mad collisionRulePrv
scoreboard players operation #mad VisibleName = #mad VisibleNamePrv
scoreboard players operation #mad VisibleInvis = #mad VisibleInvisPrv
scoreboard players operation #mad VisibleDeath = #mad VisibleDeathPrv
scoreboard players operation #mad SetTeamManual = #mad SetTeamManualPrv
scoreboard players operation #mad NumberOfTeams = #mad NumberOfTeamsPrv
scoreboard players operation #mad NumberOfBeacons = #mad NumberOfBeaconsPrv
scoreboard players operation #mad RespawnBannerTime = #mad RespawnBannerTimePrv

## Send messages
function mad:system/begin/gui/team_match/send_message