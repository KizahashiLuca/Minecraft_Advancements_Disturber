#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add scoreboard
scoreboard objectives add IsTeamTmp dummy

## Change competitiion
execute if score #mad IsTeam matches 1 run scoreboard players set #mad IsTeamTmp 0
execute if score #mad NumParticipant matches ..1 if score #mad IsTeam matches 0 run scoreboard players set #mad IsTeamTmp 0
execute if score #mad NumParticipant matches 2.. if score #mad IsTeam matches 0 run scoreboard players set #mad IsTeamTmp 1

scoreboard players operation #mad IsTeam = #mad IsTeamTmp

## Remove scoreboard
scoreboard objectives remove IsTeamTmp

## Set inventory
function mad:system/setting/choose_setting/change_to
