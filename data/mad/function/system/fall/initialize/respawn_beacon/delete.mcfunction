#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンビーコン削除
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run fill ~-7 ~-2 ~-7 ~7 ~10 ~7 minecraft:air
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run kill @e[type=!minecraft:player,distance=..20]
kill @e[predicate=mad:marker/respawn_beacon,limit=1]
kill @e[type=minecraft:text_display]
kill @e[type=minecraft:item_display]