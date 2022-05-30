#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamC 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamC] DeadOwnTeam 1
scoreboard players set @p[team=TeamC,tag=Leader] Second 0