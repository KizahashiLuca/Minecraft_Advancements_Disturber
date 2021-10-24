#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add VisibleDeathTmp dummy

## Change VisibleDeath
execute if score #mad VisibleDeath matches 1 run scoreboard players set #mad VisibleDeathTmp 0
execute if score #mad VisibleDeath matches 0 run scoreboard players set #mad VisibleDeathTmp 1

scoreboard players operation #mad VisibleDeath = #mad VisibleDeathTmp

## Remove scoreboard
scoreboard objectives remove VisibleDeathTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to