#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンビーコン削除
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run fill ~-7 ~-2 ~-7 ~7 ~10 ~7 minecraft:air
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run kill @e[type=!minecraft:player,distance=..20]
kill @e[predicate=mad:marker/respawn_beacon,limit=1]
kill @e[type=minecraft:text_display]