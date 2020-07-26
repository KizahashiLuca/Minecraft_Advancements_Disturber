#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add scoreboard
scoreboard objectives add VisibleInvisTmp dummy

## Change VisibleInvis
execute if score #mad VisibleInvis matches 1 run scoreboard players set #mad VisibleInvisTmp 0
execute if score #mad VisibleInvis matches 0 run scoreboard players set #mad VisibleInvisTmp 1

scoreboard players operation #mad VisibleInvis = #mad VisibleInvisTmp

## Remove scoreboard
scoreboard objectives remove VisibleInvisTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to