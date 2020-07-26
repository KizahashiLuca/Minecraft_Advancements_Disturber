#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
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