#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s run function mad:system/ongame_individual/advancements/adventure/spyglass_at_dragon
execute if score #mad IsTeam matches 1 as @s[team=TeamA] run function mad:system/ongame_team/advancements/adventure/spyglass_at_dragon_team_a
execute if score #mad IsTeam matches 1 as @s[team=TeamB] run function mad:system/ongame_team/advancements/adventure/spyglass_at_dragon_team_b
execute if score #mad IsTeam matches 1 as @s[team=TeamC] run function mad:system/ongame_team/advancements/adventure/spyglass_at_dragon_team_c
execute if score #mad IsTeam matches 1 as @s[team=TeamD] run function mad:system/ongame_team/advancements/adventure/spyglass_at_dragon_team_d
execute if score #mad IsTeam matches 1 as @s[team=TeamE] run function mad:system/ongame_team/advancements/adventure/spyglass_at_dragon_team_e
