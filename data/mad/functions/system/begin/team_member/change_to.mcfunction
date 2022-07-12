#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Change dimension
execute if predicate mad:phase/begin/gui in mad:world run function mad:system/begin/team_member/set_world/main

## Count team
scoreboard players set #mad TeamMemberNotExist 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 unless entity @p[predicate=mad:player/team/a] run scoreboard players add #mad TeamMemberNotExist 1
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 unless entity @p[predicate=mad:player/team/b] run scoreboard players add #mad TeamMemberNotExist 1
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 unless entity @p[predicate=mad:player/team/c] run scoreboard players add #mad TeamMemberNotExist 1
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 unless entity @p[predicate=mad:player/team/d] run scoreboard players add #mad TeamMemberNotExist 1
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 unless entity @p[predicate=mad:player/team/e] run scoreboard players add #mad TeamMemberNotExist 1

## Set inventory
execute as @p[predicate=mad:player/host] run loot replace entity @s inventory.4 loot mad:system/begin/team_member/master
execute as @p[predicate=mad:player/host] run loot replace entity @s inventory.19 loot mad:system/begin/team_member/cancel
execute as @p[predicate=mad:player/host] run loot replace entity @s inventory.22 loot mad:system/begin/team_member/reset
execute as @p[predicate=mad:player/host,predicate=mad:system/begin/team_member/all_team_exists_member] run loot replace entity @s inventory.25 loot mad:system/begin/team_member/ok

## Change phase
scoreboard players set #mad Phase 16