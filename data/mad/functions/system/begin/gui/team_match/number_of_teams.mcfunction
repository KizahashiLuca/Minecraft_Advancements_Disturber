#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Change number of teams
scoreboard players add #mad NumberOfTeams 1
execute if score #mad NumOfParticipants < #mad NumberOfTeams run scoreboard players set #mad NumberOfTeams 2
execute if score #mad NumberOfTeams matches 6.. run scoreboard players set #mad NumberOfTeams 2

## Set inventory
function mad:system/begin/gui/team_match/change_to