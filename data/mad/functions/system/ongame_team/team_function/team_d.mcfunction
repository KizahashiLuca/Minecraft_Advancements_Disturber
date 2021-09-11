#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Count alive member
execute as @a[predicate=mad:ongame/player/team_d_alive] run scoreboard players add @p[team=TeamD,tag=Leader] NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:ongame/player/team_d_dead,gamemode=spectator] at @s run function mad:system/ongame_team/spectate_player/team_d

## Detect team end
execute unless entity @p[predicate=mad:ongame/player/team_d_alive] run function mad:system/ongame_team/detect_death/team_d