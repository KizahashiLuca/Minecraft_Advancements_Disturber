#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
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