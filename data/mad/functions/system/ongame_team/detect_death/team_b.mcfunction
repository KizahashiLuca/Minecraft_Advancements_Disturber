#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamB 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamB] DeadOwnTeam 1
scoreboard players set @p[team=TeamB,tag=Leader] Second 0