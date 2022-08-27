#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @p[predicate=mad:system/wait/set_game/not_numbered,sort=random] ParticipantNumber = #mad ParticipantNumber
execute as @a[predicate=mad:system/wait/set_game/not_numbered] if score @s ParticipantNumber = #mad ParticipantNumber run tag @s add MAD_Numbered

## Loop
scoreboard players add #mad ParticipantNumber 1
execute if score #mad ParticipantNumber <= #mad NumOfParticipants run function mad:system/wait/set_game/numbering