#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0}] run function mad:system/ongame_individual/advancements/nether/loot_bastion
execute if score #mad IsTeam matches 1 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0},team=TeamA] run function mad:system/ongame_team/advancements/nether/loot_bastion_team_a
execute if score #mad IsTeam matches 1 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0},team=TeamB] run function mad:system/ongame_team/advancements/nether/loot_bastion_team_b
execute if score #mad IsTeam matches 1 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0},team=TeamC] run function mad:system/ongame_team/advancements/nether/loot_bastion_team_c
execute if score #mad IsTeam matches 1 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0},team=TeamD] run function mad:system/ongame_team/advancements/nether/loot_bastion_team_d
execute if score #mad IsTeam matches 1 as @s[scores={AD_nt_loot_bastn=0,Phase=21,Death=0},team=TeamE] run function mad:system/ongame_team/advancements/nether/loot_bastion_team_e
