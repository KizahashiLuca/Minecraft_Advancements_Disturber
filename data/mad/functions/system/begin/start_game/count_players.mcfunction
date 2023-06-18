#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Count players
scoreboard objectives add NumOfParticipants dummy
tag @a[gamemode=!spectator] add MAD_Participant
function mad:system/begin/set_game/count_players