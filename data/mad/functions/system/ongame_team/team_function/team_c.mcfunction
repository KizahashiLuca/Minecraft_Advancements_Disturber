#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Count alive member
execute as @a[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamC,tag=Leader] NumOfTeamPlayer 1

## Kill - time over
execute as @p[team=TeamC,scores={Phase=21,Death=0,Second=..0},tag=Leader] run kill @a[team=TeamC,scores={Phase=21,Death=0}]

## Detect team end
execute unless entity @p[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players set #mad DeadTeamC 1
execute if score #mad DeadTeamC matches 1 run scoreboard players add #mad NumDead 1
execute if score #mad DeadTeamC matches 1 run scoreboard players set @p[team=TeamC,tag=Leader] Second 0