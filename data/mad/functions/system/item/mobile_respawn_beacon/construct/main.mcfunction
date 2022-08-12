#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect constructable
execute if entity @e[predicate=mad:system/item/mobile_respawn_beacon/construct/not_construct,distance=..3] run function mad:system/item/mobile_respawn_beacon/construct/not_construct
execute unless entity @e[predicate=mad:system/item/mobile_respawn_beacon/construct/not_construct,distance=..3] run function mad:system/item/mobile_respawn_beacon/construct/construct