#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @p[tag=Participant,tag=!Numbered,sort=random] Participant = #mad Participant
execute as @a[tag=Participant,tag=!Numbered] if score @s Participant = #mad Participant run tag @s add Numbered

## Loop
scoreboard players add #mad Participant 1
execute if score #mad Participant <= #mad NumParticipant run function mad:system/pre_preparation/numbering