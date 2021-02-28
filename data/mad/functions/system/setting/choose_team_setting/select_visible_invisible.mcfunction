#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
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