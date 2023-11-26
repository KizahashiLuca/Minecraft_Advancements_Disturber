#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon minecart
execute at @e[predicate=mad:marker/world_spawn] run summon minecraft:marker ~ 320 ~ {Tags:["MAD_WhereSummonMinecart","MAD_DetectWhereSummonMinecart"],NoGravity:1b,Invulnerable:1b}

## Decide where to summon minecart
execute as @e[predicate=mad:marker/minecart/detect_where_summon_minecart] run function mad:system/game/minecart/teleport_minecart/main

## Set sidebar
execute as @e[predicate=mad:marker/minecart/where_summon_minecart] run function mad:system/game/minecart/set_sidebar/first_drop