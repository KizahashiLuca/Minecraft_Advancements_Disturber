#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Mobile Respawn Beacon
execute as @s[tag=!SetRespawnBanner] if block ~ ~1 ~ #mad:banner run function mad:system/ongame/mobile_respawn_beacon/detect_respawn_beacon
execute as @s[tag=SetRespawnBanner] unless block ~ ~1 ~ #mad:banner run function mad:system/ongame/mobile_respawn_beacon/reset_respawn_beacon

execute as @s[tag=SetRespawnBanner] if entity @p[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run function mad:system/ongame/mobile_respawn_beacon/time/tick
execute as @s[tag=SetRespawnBanner] run function mad:system/ongame/mobile_respawn_beacon/send_gauge