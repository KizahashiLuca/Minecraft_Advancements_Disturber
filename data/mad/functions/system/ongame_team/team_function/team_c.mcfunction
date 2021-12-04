#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Count alive member
execute as @a[predicate=mad:ongame/player/team_c_alive] run scoreboard players add @p[team=TeamC,tag=Leader] NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:ongame/player/team_c_dead,gamemode=spectator] at @s run function mad:system/ongame_team/spectate_player/team_c

## Detect team end
execute unless entity @p[predicate=mad:ongame/player/team_c_alive] run function mad:system/ongame_team/detect_death/team_c