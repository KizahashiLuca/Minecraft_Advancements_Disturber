#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Respawn Banner
execute unless block ~ ~ ~ minecraft:chest{Items:[{tag:{Tags:["RespawnBannerFromChest"]}}]} run function mad:system/ongame/respawn_banner/detect_respawn_banner
execute unless entity @e[type=minecraft:area_effect_cloud,distance=..0.2,tag=RespawnBanner] run function mad:system/ongame/respawn_banner/break_respawn_banner