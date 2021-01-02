#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_world_border/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select34 0

## Change phase
scoreboard players set #mad Phase 10