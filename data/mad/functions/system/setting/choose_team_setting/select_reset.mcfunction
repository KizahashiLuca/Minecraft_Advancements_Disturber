#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 0
scoreboard players set #mad VisibleInvis 0
scoreboard players set #mad VisibleDeath 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad TeamNumber 2
scoreboard players set #mad BeaconNumber 1
scoreboard players set #mad RespawnTime 0

## Send messages
function mad:system/setting/choose_team_setting/change_to