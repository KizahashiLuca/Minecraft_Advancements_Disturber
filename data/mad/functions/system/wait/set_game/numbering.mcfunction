#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @p[predicate=mad:system/wait/set_game/not_numbered,sort=random] ParticipantNumber = #mad ParticipantNumber
execute as @a[predicate=mad:system/wait/set_game/not_numbered] if score @s ParticipantNumber = #mad ParticipantNumber run tag @s add MAD_Numbered

## Loop
scoreboard players add #mad ParticipantNumber 1
execute if score #mad ParticipantNumber <= #mad NumOfParticipants run function mad:system/wait/set_game/numbering