#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Mobile Respawn Beacon
execute as @s[tag=!SetRespawnBanner] if block ~ ~1 ~ #mad:banner run function mad:system/ongame/mobile_respawn_beacon/detect_respawn_beacon
execute as @s[tag=SetRespawnBanner] unless block ~ ~1 ~ #mad:banner run function mad:system/ongame/mobile_respawn_beacon/reset_respawn_beacon

execute as @s[tag=SetRespawnBanner] if entity @p[predicate=mad:ongame/player/participant_alive_on_sneak,distance=..2] run function mad:system/ongame/mobile_respawn_beacon/time/tick
execute as @s[tag=SetRespawnBanner] run function mad:system/ongame/mobile_respawn_beacon/send_gauge