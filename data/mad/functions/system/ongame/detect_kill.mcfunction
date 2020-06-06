#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Add a tag
tag @s add Killer

## Detect killed
execute as @a[team=Participant,scores={Death=1}] run scoreboard players operation @p[team=Participant,tag=Killer] Second += @s Second
scoreboard players operation @p[team=Participant,tag=Killer] Kill += @p[team=Participant,tag=Killer] KillTemp
scoreboard players set @p[team=Participant,tag=Killer] KillTemp 0

## Remove a tag
tag @p[team=Participant,tag=Killer] remove Killer