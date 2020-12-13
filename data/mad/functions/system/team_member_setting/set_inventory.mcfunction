#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
execute if score #mad TeamNumber matches 1.. run loot replace entity @p[tag=Host] inventory.11 loot mad:team_member_setting/host_inventory/team_a
execute if score #mad TeamNumber matches 2.. run loot replace entity @p[tag=Host] inventory.12 loot mad:team_member_setting/host_inventory/team_b
execute if score #mad TeamNumber matches 3.. run loot replace entity @p[tag=Host] inventory.13 loot mad:team_member_setting/host_inventory/team_c
execute if score #mad TeamNumber matches 4.. run loot replace entity @p[tag=Host] inventory.14 loot mad:team_member_setting/host_inventory/team_d
execute if score #mad TeamNumber matches 5.. run loot replace entity @p[tag=Host] inventory.15 loot mad:team_member_setting/host_inventory/team_e

execute if score #mad TeamNumber matches 1.. run loot replace entity @p[tag=Host] hotbar.2 loot mad:team_member_setting/host_inventory/team_a
execute if score #mad TeamNumber matches 2.. run loot replace entity @p[tag=Host] hotbar.3 loot mad:team_member_setting/host_inventory/team_b
execute if score #mad TeamNumber matches 3.. run loot replace entity @p[tag=Host] hotbar.4 loot mad:team_member_setting/host_inventory/team_c
execute if score #mad TeamNumber matches 4.. run loot replace entity @p[tag=Host] hotbar.5 loot mad:team_member_setting/host_inventory/team_d
execute if score #mad TeamNumber matches 5.. run loot replace entity @p[tag=Host] hotbar.6 loot mad:team_member_setting/host_inventory/team_e

loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mad:setting/common/reset
execute if score #mad TeamBoolean matches 0 run loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
loot replace entity @p[tag=Host,team=TeamA] inventory.2 loot mad:team_member_setting/host_inventory/nether_star_team_a
loot replace entity @p[tag=Host,team=TeamB] inventory.3 loot mad:team_member_setting/host_inventory/nether_star_team_b
loot replace entity @p[tag=Host,team=TeamC] inventory.4 loot mad:team_member_setting/host_inventory/nether_star_team_c
loot replace entity @p[tag=Host,team=TeamD] inventory.5 loot mad:team_member_setting/host_inventory/nether_star_team_d
loot replace entity @p[tag=Host,team=TeamE] inventory.6 loot mad:team_member_setting/host_inventory/nether_star_team_e

loot replace entity @p[tag=Host,team=TeamA] armor.head loot mad:team_member_setting/player_head/team_a
loot replace entity @p[tag=Host,team=TeamB] armor.head loot mad:team_member_setting/player_head/team_b
loot replace entity @p[tag=Host,team=TeamC] armor.head loot mad:team_member_setting/player_head/team_c
loot replace entity @p[tag=Host,team=TeamD] armor.head loot mad:team_member_setting/player_head/team_d
loot replace entity @p[tag=Host,team=TeamE] armor.head loot mad:team_member_setting/player_head/team_e