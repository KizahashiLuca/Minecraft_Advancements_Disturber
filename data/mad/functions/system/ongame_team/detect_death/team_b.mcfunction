#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamB 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamB] DeadOwnTeam 1
scoreboard players set @p[team=TeamB,tag=Leader] Second 0