#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Reset choice
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 0
scoreboard players set #mad VisibleInvis 0
scoreboard players set #mad VisibleDeath 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad TeamNumber 2

## Send messages
function mad:system/setting/choose_team_setting/change_to