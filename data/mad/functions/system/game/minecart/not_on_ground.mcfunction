#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_SetNextMinecart

## Set next
function mad:system/game/minecart/where_summon_minecart

## calculate random time
scoreboard players set @s RandomCount 1
execute as @s run function mad:system/common/randomizer/randomize