#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Branch team
execute if score #mad IsTeam matches 0 as @s run function mad:system/ongame_individual/advancements/story/enchant_item
execute if score #mad IsTeam matches 1 as @s[team=TeamA] run function mad:system/ongame_team/advancements/story/enchant_item_team_a
execute if score #mad IsTeam matches 1 as @s[team=TeamB] run function mad:system/ongame_team/advancements/story/enchant_item_team_b
execute if score #mad IsTeam matches 1 as @s[team=TeamC] run function mad:system/ongame_team/advancements/story/enchant_item_team_c
execute if score #mad IsTeam matches 1 as @s[team=TeamD] run function mad:system/ongame_team/advancements/story/enchant_item_team_d
execute if score #mad IsTeam matches 1 as @s[team=TeamE] run function mad:system/ongame_team/advancements/story/enchant_item_team_e
