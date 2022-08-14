#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect constructable
execute if entity @e[predicate=mad:system/item/mobile_respawn_beacon/construct/not_construct,distance=..3] run function mad:system/item/mobile_respawn_beacon/construct/not_construct
execute unless entity @e[predicate=mad:system/item/mobile_respawn_beacon/construct/not_construct,distance=..3] run function mad:system/item/mobile_respawn_beacon/construct/construct