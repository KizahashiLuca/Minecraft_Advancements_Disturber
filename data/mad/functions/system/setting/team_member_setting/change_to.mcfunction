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
clear @p[tag=Host]

## Count team
scoreboard players set #mad TeamBoolean 0
execute if score #mad TeamNumber matches 1.. unless entity @p[team=TeamA] run scoreboard players add #mad TeamBoolean 1
execute if score #mad TeamNumber matches 2.. unless entity @p[team=TeamB] run scoreboard players add #mad TeamBoolean 1
execute if score #mad TeamNumber matches 3.. unless entity @p[team=TeamC] run scoreboard players add #mad TeamBoolean 1
execute if score #mad TeamNumber matches 4.. unless entity @p[team=TeamD] run scoreboard players add #mad TeamBoolean 1
execute if score #mad TeamNumber matches 5.. unless entity @p[team=TeamE] run scoreboard players add #mad TeamBoolean 1

## Set inventory
function mad:system/setting/team_member_setting/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Selected 0
scoreboard players set @p[tag=Host] Select02 0
scoreboard players set @p[tag=Host] Select03 0
scoreboard players set @p[tag=Host] Select04 0
scoreboard players set @p[tag=Host] Select05 0
scoreboard players set @p[tag=Host] Select06 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select21 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select23 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select31 0
scoreboard players set @p[tag=Host] Select34 0

## Set team
execute if score #mad Phase matches 5 run team join TeamA @p[tag=Host]
execute if score #mad Phase matches 5 run item replace entity @s armor.head with minecraft:pink_dye

## Change phase
scoreboard players set #mad Phase 17