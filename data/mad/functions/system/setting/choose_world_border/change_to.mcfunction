#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Clear inventory
clear @p[tag=Host]

## Set scoreboard
scoreboard players operation #mad WorldBorderUp = #mad WorldBorder
scoreboard players operation #mad WorldBorderDown = #mad WorldBorder
scoreboard players add #mad WorldBorderUp 100
scoreboard players remove #mad WorldBorderDown 100
execute if score #mad WorldBorderUp matches 2100 run scoreboard players set #mad WorldBorderUp 0
execute if score #mad WorldBorderDown matches -100 run scoreboard players set #mad WorldBorderDown 2000
scoreboard players operation @p[tag=Host] WorldBorder = #mad WorldBorder
scoreboard players operation @p[tag=Host] WorldBorderUp = #mad WorldBorderUp
scoreboard players operation @p[tag=Host] WorldBorderDown = #mad WorldBorderDown

## Set inventory
function mad:system/setting/choose_world_border/set_inventory

## Change phase
scoreboard players set #mad Phase 10