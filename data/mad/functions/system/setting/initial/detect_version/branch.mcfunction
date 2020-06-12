#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Minecraft 1.14
scoreboard players set #mad Version 14

## Minecraft 1.15
function mwj:system/setting/initial/detect_version/v15

## Minecraft 1.16
function mwj:system/setting/initial/detect_version/v16

## Clear inventory
replaceitem entity @p[tag=Host] inventory.0 minecraft:air