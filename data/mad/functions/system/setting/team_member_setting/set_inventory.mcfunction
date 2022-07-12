#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set inventory
execute if score #mad NumberOfTeams matches 1.. run loot replace entity @p[predicate=mad:player/host] inventory.11 loot mad:team_member_setting/host_inventory/team_a
execute if score #mad NumberOfTeams matches 2.. run loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:team_member_setting/host_inventory/team_b
execute if score #mad NumberOfTeams matches 3.. run loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:team_member_setting/host_inventory/team_c
execute if score #mad NumberOfTeams matches 4.. run loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:team_member_setting/host_inventory/team_d
execute if score #mad NumberOfTeams matches 5.. run loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:team_member_setting/host_inventory/team_e

execute if score #mad NumberOfTeams matches 1.. run loot replace entity @p[predicate=mad:player/host] hotbar.2 loot mad:team_member_setting/host_inventory/team_a
execute if score #mad NumberOfTeams matches 2.. run loot replace entity @p[predicate=mad:player/host] hotbar.3 loot mad:team_member_setting/host_inventory/team_b
execute if score #mad NumberOfTeams matches 3.. run loot replace entity @p[predicate=mad:player/host] hotbar.4 loot mad:team_member_setting/host_inventory/team_c
execute if score #mad NumberOfTeams matches 4.. run loot replace entity @p[predicate=mad:player/host] hotbar.5 loot mad:team_member_setting/host_inventory/team_d
execute if score #mad NumberOfTeams matches 5.. run loot replace entity @p[predicate=mad:player/host] hotbar.6 loot mad:team_member_setting/host_inventory/team_e

loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:setting/common/reset
execute if score #mad TeamMemberNotExist matches 0 run loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
loot replace entity @p[predicate=mad:player/host,team=TeamA] inventory.2 loot mad:team_member_setting/host_inventory/nether_star_team_a
loot replace entity @p[predicate=mad:player/host,team=TeamB] inventory.3 loot mad:team_member_setting/host_inventory/nether_star_team_b
loot replace entity @p[predicate=mad:player/host,team=TeamC] inventory.4 loot mad:team_member_setting/host_inventory/nether_star_team_c
loot replace entity @p[predicate=mad:player/host,team=TeamD] inventory.5 loot mad:team_member_setting/host_inventory/nether_star_team_d
loot replace entity @p[predicate=mad:player/host,team=TeamE] inventory.6 loot mad:team_member_setting/host_inventory/nether_star_team_e

loot replace entity @p[predicate=mad:player/host,team=TeamA] armor.head loot mad:team_member_setting/player_head/team_a
loot replace entity @p[predicate=mad:player/host,team=TeamB] armor.head loot mad:team_member_setting/player_head/team_b
loot replace entity @p[predicate=mad:player/host,team=TeamC] armor.head loot mad:team_member_setting/player_head/team_c
loot replace entity @p[predicate=mad:player/host,team=TeamD] armor.head loot mad:team_member_setting/player_head/team_d
loot replace entity @p[predicate=mad:player/host,team=TeamE] armor.head loot mad:team_member_setting/player_head/team_e