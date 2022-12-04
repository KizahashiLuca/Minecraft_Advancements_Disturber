#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set titles
title @a[distance=..2] title [""]

## Set subtitles
execute as @s[predicate=mad:system/common/respawn_beacon/send_gauge/red_gage] run function mad:system/common/respawn_beacon/send_gauge/red_gage
execute as @s[predicate=mad:system/common/respawn_beacon/send_gauge/yellow_gage] run function mad:system/common/respawn_beacon/send_gauge/yellow_gage
execute as @s[predicate=mad:system/common/respawn_beacon/send_gauge/green_gage] run function mad:system/common/respawn_beacon/send_gauge/green_gage

## Set time
title @a[distance=..2] times 0 20 0