#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s run function mad:system/ongame_individual/advancements/adventure/play_jukebox_in_meadows
execute if score #mad IsTeam matches 1 as @s[team=TeamA] run function mad:system/ongame_team/advancements/adventure/play_jukebox_in_meadows_team_a
execute if score #mad IsTeam matches 1 as @s[team=TeamB] run function mad:system/ongame_team/advancements/adventure/play_jukebox_in_meadows_team_b
execute if score #mad IsTeam matches 1 as @s[team=TeamC] run function mad:system/ongame_team/advancements/adventure/play_jukebox_in_meadows_team_c
execute if score #mad IsTeam matches 1 as @s[team=TeamD] run function mad:system/ongame_team/advancements/adventure/play_jukebox_in_meadows_team_d
execute if score #mad IsTeam matches 1 as @s[team=TeamE] run function mad:system/ongame_team/advancements/adventure/play_jukebox_in_meadows_team_e
