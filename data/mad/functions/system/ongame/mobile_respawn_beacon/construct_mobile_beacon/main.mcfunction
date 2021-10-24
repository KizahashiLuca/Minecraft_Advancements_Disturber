#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch
execute unless entity @e[predicate=mad:ongame/respawn_banner/structure,distance=..3] unless entity @e[predicate=mad:ongame/respawn_beacon/structure,distance=..3] unless entity @e[predicate=mad:ongame/mobile_respawn_beacon/structure,distance=..3] run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon/structure
execute as @s[tag=!DetectedMobileBeacon] if entity @e[predicate=mad:ongame/respawn_banner/structure,distance=..3] run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon/reset
execute as @s[tag=!DetectedMobileBeacon] if entity @e[predicate=mad:ongame/respawn_beacon/structure,distance=..3] run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon/reset
execute as @s[tag=!DetectedMobileBeacon] if entity @e[predicate=mad:ongame/mobile_respawn_beacon/structure,distance=..3] run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon/reset