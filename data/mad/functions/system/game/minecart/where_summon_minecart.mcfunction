#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon minecart
execute at @e[predicate=mad:marker/world_spawn] run summon minecraft:marker ~ 320 ~ {Tags:["MAD_WhereSummonMinecart","MAD_DetectWhereSummonMinecart","MAD_NotSayNextMinecart"],NoGravity:1b,Invulnerable:1b}

## Decide where to summon minecart
execute as @e[predicate=mad:marker/minecart/detect_where_summon_minecart] run function mad:system/game/minecart/teleport_minecart/main