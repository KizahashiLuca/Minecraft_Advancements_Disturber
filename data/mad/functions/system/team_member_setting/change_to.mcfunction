#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
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
# execute if entity @p[team=Participant] run scoreboard players add #mad TeamBoolean 1

## Set inventory
function mad:system/team_member_setting/set_inventory

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
execute if score #mad Phase matches 10 run team join TeamA @p[tag=Host]
execute if score #mad Phase matches 10 run replaceitem entity @s armor.head minecraft:pink_dye

## Change phase
scoreboard players set #mad Phase 17