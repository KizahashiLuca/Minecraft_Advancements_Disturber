#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Number the players
scoreboard players operation @r[team=Participant,tag=!Numbered] Participant = #mad Participant
execute as @a[team=Participant,tag=!Numbered] if score @s Participant = #mad Participant run tag @s add Numbered

## Loop
scoreboard players add #mad Participant 1
execute if score #mad Participant matches 100 run function mad:stop
execute if score #mad Participant <= #mad NumParticipant run function mad:system/pre_preparation_individual/numbering