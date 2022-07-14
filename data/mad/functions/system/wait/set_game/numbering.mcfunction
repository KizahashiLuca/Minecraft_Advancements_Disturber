#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @p[predicate=mad:system/wait/set_game/not_numbered,sort=random] ParticipantNumber = #mad ParticipantNumber
tag @a[predicate=mad:system/wait/set_game/add_number] add MAD_Numbered

## Loop
scoreboard players add #mad ParticipantNumber 1
execute if score #mad ParticipantNumber <= #mad NumOfParticipants run function mad:system/pre_preparation/numbering