#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンビーコン再設置
execute at @e[predicate=mad:marker/world_spawn,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:['MAD_RespawnBeacon'],NoGravity:1b,Invulnerable:1b}
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run place template mad:respawn_beacon ~-8 ~-3 ~-8
execute store result storage mad: respawn_beacon.x int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[0]
execute store result storage mad: respawn_beacon.y int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[1]
execute store result storage mad: respawn_beacon.z int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[2]