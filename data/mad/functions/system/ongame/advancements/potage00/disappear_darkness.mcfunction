#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0}] run function mad:system/ongame_individual/advancements/potage00/disappear_darkness
execute if score #mad IsTeam matches 1 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0},team=TeamA] run function mad:system/ongame_team/advancements/potage00/disappear_darkness_team_a
execute if score #mad IsTeam matches 1 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0},team=TeamB] run function mad:system/ongame_team/advancements/potage00/disappear_darkness_team_b
execute if score #mad IsTeam matches 1 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0},team=TeamC] run function mad:system/ongame_team/advancements/potage00/disappear_darkness_team_c
execute if score #mad IsTeam matches 1 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0},team=TeamD] run function mad:system/ongame_team/advancements/potage00/disappear_darkness_team_d
execute if score #mad IsTeam matches 1 as @s[scores={AD_pg_kill_ender=0,Phase=21,Death=0},team=TeamE] run function mad:system/ongame_team/advancements/potage00/disappear_darkness_team_e
