#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_SetNextMinecart

## Set next
function mad:system/game/minecart/where_summon_minecart

## calculate random time
scoreboard players set @s RandomCount 1
execute as @s run function mad:system/common/randomizer/randomize