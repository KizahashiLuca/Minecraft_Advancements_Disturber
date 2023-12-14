#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Create respawn beacon
place template mad:respawn_beacon ~-7 ~-2 ~-7 none none
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run setblock ~-5 ~ ~-5 minecraft:lectern[facing=south]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run setblock ~5 ~ ~5 minecraft:lectern[facing=north]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run setblock ~5 ~ ~-5 minecraft:lectern[facing=west]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run setblock ~-5 ~ ~5 minecraft:lectern[facing=east]
data modify block ~-6 ~5 ~-6 Age set value 0L
data modify block ~-6 ~5 ~6 Age set value 0L
data modify block ~6 ~5 ~-6 Age set value 0L
data modify block ~6 ~5 ~6 Age set value 0L
execute as @s[predicate=mad:marker/respawn_beacon/center_of_world_position] at @s run tp @a ~ ~ ~

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~1.0 ~0.0 {Tags:["MAD_RespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.01f,CustomName:'{"text":"リスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[predicate=mad:area_effect_cloud/respawn_beacon/structure,distance=..1.5] BeaconNumber = @s BeaconNumber

## Kill marker
kill @s