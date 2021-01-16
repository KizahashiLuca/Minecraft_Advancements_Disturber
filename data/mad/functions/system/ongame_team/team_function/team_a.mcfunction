#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Count alive member
execute as @a[team=TeamA,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamA,tag=Leader] NumOfTeamPlayer 1

## Spectate
execute as @a[team=TeamA,scores={Phase=22,Death=2..},gamemode=spectator] at @s run function mad:system/ongame_team/spectate_player/team_a

## Detect team end
execute unless entity @p[team=TeamA,scores={Phase=21,Death=0}] run function mad:system/ongame_team/detect_death/team_a