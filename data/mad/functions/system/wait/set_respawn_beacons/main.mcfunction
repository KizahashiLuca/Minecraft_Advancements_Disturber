#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon marker
execute if predicate mad:gamerules/team_match/number_of_respawn_beacons/ge_1 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["MAD_RespawnBeaconPosition"]}
execute if predicate mad:gamerules/team_match/number_of_respawn_beacons/ge_2 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["MAD_RespawnBeaconPosition"]}
execute if predicate mad:gamerules/team_match/number_of_respawn_beacons/ge_3 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["MAD_RespawnBeaconPosition"]}
execute if predicate mad:gamerules/team_match/number_of_respawn_beacons/ge_4 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["MAD_RespawnBeaconPosition"]}
execute if predicate mad:gamerules/team_match/number_of_respawn_beacons/ge_5 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["MAD_RespawnBeaconPosition"]}

## Numbering
scoreboard players set #mad BeaconNumber 1
scoreboard players set @e[predicate=mad:marker/respawn_beacon/position] BeaconNumber 0
function mad:system/wait/set_respawn_beacons/numbering
tag @e[predicate=mad:marker/respawn_beacon/position] remove MAD_Numbered

## Teleport randomly
execute if predicate mad:system/wait/set_respawn_beacons/part_a run function mad:system/wait/set_respawn_beacons/part_a
execute if predicate mad:system/wait/set_respawn_beacons/part_b run function mad:system/wait/set_respawn_beacons/part_b
execute if predicate mad:system/wait/set_respawn_beacons/part_c run function mad:system/wait/set_respawn_beacons/part_c
execute if predicate mad:system/wait/set_respawn_beacons/part_d run function mad:system/wait/set_respawn_beacons/part_d

## Align respawn beacon
execute as @e[predicate=mad:marker/respawn_beacon/position] at @s align xz run tp @s ~0.5 ~ ~0.5