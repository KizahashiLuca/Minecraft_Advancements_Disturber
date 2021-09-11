#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add SetTeamManualTmp dummy

## Change SetTeamManual
execute if score #mad SetTeamManual matches 0 run scoreboard players set #mad SetTeamManualTmp 1
execute if score #mad SetTeamManual matches 1 run scoreboard players set #mad SetTeamManualTmp 0

scoreboard players operation #mad SetTeamManual = #mad SetTeamManualTmp

## Remove scoreboard
scoreboard objectives remove SetTeamManualTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to