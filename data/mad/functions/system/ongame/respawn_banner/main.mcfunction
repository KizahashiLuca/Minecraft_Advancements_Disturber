#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Respawn Banner
execute as @s[tag=NotSetCloud] run function mad:system/ongame/respawn_banner/set_respawn_cloud
execute unless block ~ ~ ~ minecraft:chest{Items:[{tag:{Tags:["RespawnBannerFromChest"]}}]} run function mad:system/ongame/respawn_banner/detect_respawn_banner
execute unless entity @e[type=minecraft:area_effect_cloud,distance=..0.2,tag=RespawnBanner] run function mad:system/ongame/respawn_banner/break_respawn_banner