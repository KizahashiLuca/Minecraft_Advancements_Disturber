#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Respawn Beacon
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/not_set_banner] run function mad:system/item/mobile_respawn_beacon/detect
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/detect_not_set_banner] run function mad:system/item/mobile_respawn_beacon/reset_respawn_beacon

execute as @s[predicate=mad:system/item/mobile_respawn_beacon/set_respawn_banner] if entity @p[predicate=mad:player/alive/on_sneak,distance=..2] run function mad:system/item/mobile_respawn_beacon/time/tick
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/set_respawn_banner] run function mad:system/item/mobile_respawn_beacon/send_gauge/main