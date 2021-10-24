#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamC 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamC] DeadOwnTeam 1
scoreboard players set @p[team=TeamC,tag=Leader] Second 0