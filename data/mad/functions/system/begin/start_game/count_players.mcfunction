#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Count players
scoreboard objectives add NumOfParticipants dummy
tag @a[gamemode=!spectator] add MAD_Participant
function mad:system/begin/set_game/count_players