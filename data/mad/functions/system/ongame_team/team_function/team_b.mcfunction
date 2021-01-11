#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Count alive member
execute as @a[team=TeamB,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamB,tag=Leader] NumOfTeamPlayer 1

## Spectate
execute as @a[team=TeamB,scores={Phase=22,Death=2..},gamemode=spectator] at @s run function mad:system/ongame_team/spectate_player/team_b

## Detect team end
execute unless entity @p[team=TeamB,scores={Phase=21,Death=0}] run function mad:system/ongame_team/detect_death/team_b