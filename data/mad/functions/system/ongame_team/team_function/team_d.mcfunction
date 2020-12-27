#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Count alive member
execute as @a[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamD,tag=Leader] NumOfTeamPlayer 1

## Kill - time over
execute as @p[team=TeamD,scores={Second=..0},tag=Leader] run kill @a[team=TeamD,scores={Phase=21,Death=0}]

## Spectate
execute as @a[team=TeamD,scores={Phase=22,Death=2..},gamemode=spectator] at @s run spectate @p[team=TeamD,scores={Phase=21,Death=0},sort=nearest] @s

## Detect team end
execute unless entity @p[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players set #mad DeadTeamD 1
execute if score #mad DeadTeamD matches 1 run scoreboard players add #mad NumDead 1
execute if score #mad DeadTeamD matches 1 run scoreboard players set @p[team=TeamD,tag=Leader] Second 0