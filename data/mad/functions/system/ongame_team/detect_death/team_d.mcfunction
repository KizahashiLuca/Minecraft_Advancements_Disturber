#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamD 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamD] DeadOwnTeam 1
scoreboard players set @p[team=TeamD,tag=Leader] Second 0