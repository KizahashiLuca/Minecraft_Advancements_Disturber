#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Respawn Beacon
execute as @s[tag=!SetRespawnBanner] if block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/detect_respawn_beacon
execute as @s[tag=SetRespawnBanner] unless block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/reset_respawn_beacon
data modify block ~ ~-1 ~ Age set value 200L

execute as @s[tag=SetRespawnBanner] if entity @p[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run function mad:system/ongame/respawn_beacon/time/tick
execute as @s[tag=SetRespawnBanner] run function mad:system/ongame/respawn_beacon/send_gauge