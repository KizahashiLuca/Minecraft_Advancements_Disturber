#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_setting/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select21 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select23 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select34 0

## Change phase
scoreboard players set #mad Phase 10