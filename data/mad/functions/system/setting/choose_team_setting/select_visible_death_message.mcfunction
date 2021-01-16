#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
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