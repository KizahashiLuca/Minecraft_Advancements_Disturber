#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Count alive member
execute as @a[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamE,tag=Leader] NumOfTeamPlayer 1

## Kill - time over
execute as @p[team=TeamE,scores={Phase=21,Death=0,Second=..0},tag=Leader] run kill @a[team=TeamE,scores={Phase=21,Death=0}]

## Spectate
execute as @a[team=TeamE,scores={Phase=22,Death=2},gamemode=spectator] run spectate @p[team=TeamE,scores={Phase=21,Death=0},gamemode=adventure,sort=nearest] @s

## Detect team end
execute unless entity @p[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players set #mad DeadTeamE 1
execute if score #mad DeadTeamE matches 1 run scoreboard players add #mad NumDead 1
execute if score #mad DeadTeamE matches 1 run scoreboard players set @p[team=TeamE,tag=Leader] Second 0