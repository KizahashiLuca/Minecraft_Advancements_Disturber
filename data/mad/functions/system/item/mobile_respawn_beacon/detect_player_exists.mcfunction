#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect team player exists
execute as @s[predicate=mad:player/team/a] unless entity @p[predicate=mad:player/alive/a,distance=..2] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0
execute as @s[predicate=mad:player/team/b] unless entity @p[predicate=mad:player/alive/b,distance=..2] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0
execute as @s[predicate=mad:player/team/c] unless entity @p[predicate=mad:player/alive/c,distance=..2] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0
execute as @s[predicate=mad:player/team/d] unless entity @p[predicate=mad:player/alive/d,distance=..2] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0
execute as @s[predicate=mad:player/team/e] unless entity @p[predicate=mad:player/alive/e,distance=..2] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0