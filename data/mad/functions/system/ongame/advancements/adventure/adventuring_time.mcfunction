#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0}] run function mad:system/ongame_individual/advancements/adventure/adventuring_time
execute if score #mad IsTeam matches 1 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0},team=TeamA] run function mad:system/ongame_team/advancements/adventure/adventuring_time_team_a
execute if score #mad IsTeam matches 1 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0},team=TeamB] run function mad:system/ongame_team/advancements/adventure/adventuring_time_team_b
execute if score #mad IsTeam matches 1 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0},team=TeamC] run function mad:system/ongame_team/advancements/adventure/adventuring_time_team_c
execute if score #mad IsTeam matches 1 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0},team=TeamD] run function mad:system/ongame_team/advancements/adventure/adventuring_time_team_d
execute if score #mad IsTeam matches 1 as @s[scores={AD_ad_adven_time=0,Phase=21,Death=0},team=TeamE] run function mad:system/ongame_team/advancements/adventure/adventuring_time_team_e
