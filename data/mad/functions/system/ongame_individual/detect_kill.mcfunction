#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Add a tag
tag @s add Killer

## Detect killed
execute as @a[team=Participant,scores={Death=1}] run scoreboard players operation @p[team=Participant,tag=Killer] Second += @s Second
execute as @a[team=Participant,scores={Death=1}] run scoreboard players operation @p[team=Participant,tag=Killer] TimeLimit += @s Second
execute as @a[team=Participant,scores={Death=1}] run scoreboard players operation @p[team=Participant,tag=Killer] GetTimeLimit += @s Second
scoreboard players operation @p[team=Participant,tag=Killer] Kill += @p[team=Participant,tag=Killer] KillTemp
scoreboard players set @p[team=Participant,tag=Killer] KillTemp 0

## Remove a tag
tag @p[team=Participant,tag=Killer] remove Killer