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
scoreboard objectives add friendlyFireTmp dummy

## Change friendlyFire
execute if score #mad friendlyFire matches 1 run scoreboard players set #mad friendlyFireTmp 0
execute if score #mad friendlyFire matches 0 run scoreboard players set #mad friendlyFireTmp 1

scoreboard players operation #mad friendlyFire = #mad friendlyFireTmp

## Remove scoreboard
scoreboard objectives remove friendlyFireTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to