#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Add scoreboard
scoreboard objectives add TeamNumberTmp dummy

## Change TeamNumber
execute if score #mad NumParticipant matches ..2 if score #mad TeamNumber matches 2 run scoreboard players set #mad TeamNumberTmp 2
execute if score #mad NumParticipant matches 3.. if score #mad TeamNumber matches 2 run scoreboard players set #mad TeamNumberTmp 3

execute if score #mad NumParticipant matches ..3 if score #mad TeamNumber matches 3 run scoreboard players set #mad TeamNumberTmp 2
execute if score #mad NumParticipant matches 4.. if score #mad TeamNumber matches 3 run scoreboard players set #mad TeamNumberTmp 4

execute if score #mad NumParticipant matches ..4 if score #mad TeamNumber matches 4 run scoreboard players set #mad TeamNumberTmp 2
execute if score #mad NumParticipant matches 5.. if score #mad TeamNumber matches 4 run scoreboard players set #mad TeamNumberTmp 5

execute if score #mad TeamNumber matches 5 run scoreboard players set #mad TeamNumberTmp 2

scoreboard players operation #mad TeamNumber = #mad TeamNumberTmp

## Remove scoreboard
scoreboard objectives remove TeamNumberTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to