#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Respawn Beacon
execute as @s[tag=!SetRespawnBanner] if block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/detect_respawn_beacon
execute as @s[tag=SetRespawnBanner] unless block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/reset_respawn_beacon
execute if data block ~ ~-1 ~ {Age:200L} run data modify block ~ ~-1 ~ Age set value 0L

execute as @s[tag=SetRespawnBanner] if entity @p[predicate=mad:ongame/player/participant_alive_on_sneak,distance=..2] run function mad:system/ongame/respawn_beacon/time/tick
execute as @s[tag=SetRespawnBanner] run function mad:system/ongame/respawn_beacon/send_gauge