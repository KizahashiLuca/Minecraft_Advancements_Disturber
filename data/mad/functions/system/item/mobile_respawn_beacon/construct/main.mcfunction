#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect constructable
execute if predicate mad:system/item/mobile_respawn_beacon/construct/error run function mad:system/item/mobile_respawn_beacon/construct/not_construct
execute if predicate mad:system/item/mobile_respawn_beacon/construct/accept run function mad:system/item/mobile_respawn_beacon/construct/construct