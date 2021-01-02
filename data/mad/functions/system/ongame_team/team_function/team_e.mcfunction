#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Count alive member
execute as @a[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamE,tag=Leader] NumOfTeamPlayer 1

## Kill - time over
execute as @p[team=TeamE,scores={Second=..0},tag=Leader] run kill @a[team=TeamE,scores={Phase=21,Death=0}]

## Spectate
execute as @a[team=TeamE,scores={Phase=22,Death=2..},gamemode=spectator] at @s run tp @s @p[team=TeamE,scores={Phase=21,Death=0},sort=nearest]
execute as @a[team=TeamE,scores={Phase=22,Death=2..},gamemode=spectator] at @s run spectate @p[team=TeamE,scores={Phase=21,Death=0},sort=nearest] @s

## Detect team end
execute unless entity @p[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players set #mad DeadTeamE 1
execute if score #mad DeadTeamE matches 1 run scoreboard players add #mad NumDead 1
execute if score #mad DeadTeamE matches 1 run scoreboard players set @p[team=TeamE,tag=Leader] Second 0