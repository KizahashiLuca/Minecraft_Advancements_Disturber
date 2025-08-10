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
execute as @s[predicate=mad:system/common/respawn_beacon/not_set_banner] run function mad:system/common/respawn_beacon/detect
execute as @s[predicate=mad:system/common/respawn_beacon/detect_not_set_banner] run function mad:system/common/respawn_beacon/reset_respawn_beacon
execute if data block ~ ~-2 ~ {Age:200L} run data modify block ~ ~-2 ~ Age set value 0L

execute as @s[predicate=mad:system/common/respawn_beacon/set_respawn_banner] if entity @p[predicate=mad:player/alive/on_sneak,distance=..2] run function mad:system/common/respawn_beacon/time/tick
execute as @s[predicate=mad:system/common/respawn_beacon/set_respawn_banner] run function mad:system/common/respawn_beacon/send_gauge/main