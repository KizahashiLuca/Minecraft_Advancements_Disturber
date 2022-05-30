#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Count alive member
execute as @a[predicate=mad:ongame/player/team_b_alive] run scoreboard players add @p[team=TeamB,tag=Leader] NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:ongame/player/team_b_dead,gamemode=spectator] at @s run function mad:system/ongame_team/spectate_player/team_b

## Detect team end
execute unless entity @p[predicate=mad:ongame/player/team_b_alive] run function mad:system/ongame_team/detect_death/team_b