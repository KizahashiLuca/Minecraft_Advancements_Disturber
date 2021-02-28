#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Branch
# execute as @s[predicate=!mad:ongame/transmitter] at @s run function mad:system/ongame/transmitter/error
# execute as @s[scores={UseTransmitter=1},predicate=mad:ongame/transmitter] at @s run function mad:system/ongame/transmitter/transmit_player/main
# execute as @s[scores={UseTransmitter=2},predicate=mad:ongame/transmitter] at @s run function mad:system/ongame/transmitter/transmit_banner/main
# execute as @s[scores={UseTransmitter=3},predicate=mad:ongame/transmitter] at @s run function mad:system/ongame/transmitter/transmit_beacon/main

## Add a tag
tag @s add RayCasting

## Ray cast
execute anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["TransmitterRayCast"]}
execute as @e[tag=TransmitterRayCast,sort=nearest,limit=1] at @s run function mad:system/ongame/transmitter/ray_cast_main

## Remove a tag
tag @s remove RayCasting