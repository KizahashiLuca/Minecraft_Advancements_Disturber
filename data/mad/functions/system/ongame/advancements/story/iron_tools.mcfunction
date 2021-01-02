#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0}] run function mad:system/ongame_individual/advancements/story/iron_tools
execute if score #mad IsTeam matches 1 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0},team=TeamA] run function mad:system/ongame_team/advancements/story/iron_tools_team_a
execute if score #mad IsTeam matches 1 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0},team=TeamB] run function mad:system/ongame_team/advancements/story/iron_tools_team_b
execute if score #mad IsTeam matches 1 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0},team=TeamC] run function mad:system/ongame_team/advancements/story/iron_tools_team_c
execute if score #mad IsTeam matches 1 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0},team=TeamD] run function mad:system/ongame_team/advancements/story/iron_tools_team_d
execute if score #mad IsTeam matches 1 as @s[scores={AD_mc_iron_tools=0,Phase=21,Death=0},team=TeamE] run function mad:system/ongame_team/advancements/story/iron_tools_team_e
