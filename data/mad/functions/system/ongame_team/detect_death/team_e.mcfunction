#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set scoreboard
scoreboard players set #mad DeadTeamE 1
scoreboard players add #mad NumDead 1
scoreboard players set @a[team=TeamE] DeadOwnTeam 1
scoreboard players set @p[team=TeamE,tag=Leader] Second 0