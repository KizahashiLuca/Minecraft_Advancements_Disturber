#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.9 loot mad:setting/choose_team_setting/friendly_fire
loot replace entity @p[tag=Host] inventory.10 loot mad:setting/choose_team_setting/collision_rule
loot replace entity @p[tag=Host] inventory.11 loot mad:setting/choose_team_setting/nametag_visibility
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_team_setting/see_friendly_invisibles
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_team_setting/death_message_visibility
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_team_setting/set_team_member_manual
loot replace entity @p[tag=Host] inventory.15 loot mad:setting/choose_team_setting/set_team_number
loot replace entity @p[tag=Host] inventory.16 loot mad:setting/choose_team_setting/choose_respawn_beacon_number
loot replace entity @p[tag=Host] inventory.17 loot mad:setting/choose_team_setting/choose_respawn_banner_time

loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mad:setting/common/reset
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
execute if score #mad friendlyFire matches 0 run loot replace entity @p[tag=Host] inventory.0 loot mad:setting/common/off
execute if score #mad friendlyFire matches 1 run loot replace entity @p[tag=Host] inventory.0 loot mad:setting/common/on

execute if score #mad collisionRule matches 0 run loot replace entity @p[tag=Host] inventory.1 loot mad:setting/common/off
execute if score #mad collisionRule matches 1 run loot replace entity @p[tag=Host] inventory.1 loot mad:setting/common/on

execute if score #mad VisibleName matches 0 run loot replace entity @p[tag=Host] inventory.2 loot mad:setting/common/off
execute if score #mad VisibleName matches 1 run loot replace entity @p[tag=Host] inventory.2 loot mad:setting/common/on

execute if score #mad VisibleInvis matches 0 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/off
execute if score #mad VisibleInvis matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/on

execute if score #mad VisibleDeath matches 0 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/common/off
execute if score #mad VisibleDeath matches 1 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/common/on

execute if score #mad SetTeamManual matches 0 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/off
execute if score #mad SetTeamManual matches 1 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/on

loot replace entity @p[tag=Host] inventory.6 loot mad:setting/choose_team_setting/team_number
loot replace entity @p[tag=Host] inventory.7 loot mad:setting/choose_team_setting/beacon_number
loot replace entity @p[tag=Host] inventory.8 loot mad:setting/choose_team_setting/respawn_banner_time