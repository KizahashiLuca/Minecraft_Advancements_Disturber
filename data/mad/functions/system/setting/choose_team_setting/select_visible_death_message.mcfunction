#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
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