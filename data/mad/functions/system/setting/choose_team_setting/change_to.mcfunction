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

## Set inventory
function mad:system/setting/choose_team_setting/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select09 0
scoreboard players set @p[tag=Host] Select10 0
scoreboard players set @p[tag=Host] Select11 0
scoreboard players set @p[tag=Host] Select12 0
scoreboard players set @p[tag=Host] Select13 0
scoreboard players set @p[tag=Host] Select14 0
scoreboard players set @p[tag=Host] Select15 0
scoreboard players set @p[tag=Host] Select16 0
scoreboard players set @p[tag=Host] Select17 0
scoreboard players set @p[tag=Host] Select18 0
scoreboard players set @p[tag=Host] Select19 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select21 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select23 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select25 0
scoreboard players set @p[tag=Host] Select26 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select31 0
scoreboard players set @p[tag=Host] Select34 0

## Change phase
scoreboard players set #mad Phase 16