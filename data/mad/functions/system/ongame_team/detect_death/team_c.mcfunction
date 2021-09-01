#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamC 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamC] DeadOwnTeam 1
scoreboard players set @p[team=TeamC,tag=Leader] Second 0