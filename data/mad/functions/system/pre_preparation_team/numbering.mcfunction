#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Number the players
scoreboard players operation @r[tag=Participant,tag=!Numbered] Participant = #mad Participant
execute as @a[tag=Participant,tag=!Numbered] if score @s Participant = #mad Participant run tag @s add Numbered

## Loop
scoreboard players add #mad Participant 1
# execute if score #mad Participant matches 100 run function mad:stop
execute if score #mad Participant <= #mad NumParticipant run function mad:system/pre_preparation_team/numbering