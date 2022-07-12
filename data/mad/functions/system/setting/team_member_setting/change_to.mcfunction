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

## Count team
scoreboard players set #mad TeamMemberNotExist 0
execute if score #mad NumberOfTeams matches 1.. unless entity @p[predicate=mad:player/team/a] run scoreboard players add #mad TeamMemberNotExist 1
execute if score #mad NumberOfTeams matches 2.. unless entity @p[predicate=mad:player/team/b] run scoreboard players add #mad TeamMemberNotExist 1
execute if score #mad NumberOfTeams matches 3.. unless entity @p[predicate=mad:player/team/c] run scoreboard players add #mad TeamMemberNotExist 1
execute if score #mad NumberOfTeams matches 4.. unless entity @p[predicate=mad:player/team/d] run scoreboard players add #mad TeamMemberNotExist 1
execute if score #mad NumberOfTeams matches 5.. unless entity @p[predicate=mad:player/team/e] run scoreboard players add #mad TeamMemberNotExist 1

## Set inventory
function mad:system/setting/team_member_setting/set_inventory

## Set scoreboard
scoreboard players set @p[predicate=mad:player/host] ThrowItem 0
scoreboard players set @p[predicate=mad:player/host] Selected 0
scoreboard players set @p[predicate=mad:player/host] Select02 0
scoreboard players set @p[predicate=mad:player/host] Select03 0
scoreboard players set @p[predicate=mad:player/host] Select04 0
scoreboard players set @p[predicate=mad:player/host] Select05 0
scoreboard players set @p[predicate=mad:player/host] Select06 0
scoreboard players set @p[predicate=mad:player/host] Select20 0
scoreboard players set @p[predicate=mad:player/host] Select21 0
scoreboard players set @p[predicate=mad:player/host] Select22 0
scoreboard players set @p[predicate=mad:player/host] Select23 0
scoreboard players set @p[predicate=mad:player/host] Select24 0
scoreboard players set @p[predicate=mad:player/host] Select28 0
scoreboard players set @p[predicate=mad:player/host] Select31 0
scoreboard players set @p[predicate=mad:player/host] Select34 0

## Set team
execute if score #mad Phase matches 5 run team join TeamA @p[predicate=mad:player/host]
execute if score #mad Phase matches 5 run item replace entity @s armor.head with minecraft:pink_dye

## Change phase
scoreboard players set #mad Phase 17