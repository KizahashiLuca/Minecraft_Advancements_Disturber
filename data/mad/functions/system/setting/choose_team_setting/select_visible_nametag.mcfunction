#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Add scoreboard
scoreboard objectives add VisibleNameTmp dummy

## Change VisibleName
execute if score #mad VisibleName matches 1 run scoreboard players set #mad VisibleNameTmp 0
execute if score #mad VisibleName matches 0 run scoreboard players set #mad VisibleNameTmp 1

scoreboard players operation #mad VisibleName = #mad VisibleNameTmp

## Remove scoreboard
scoreboard objectives remove VisibleNameTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to