#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon armor stand
execute if score #mad BeaconNumber matches 1.. run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 1.. run scoreboard players add @e[predicate=mad:ongame/respawn_beacon/position] BeaconNumber 1

execute if score #mad BeaconNumber matches 2.. run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 2.. run scoreboard players add @e[predicate=mad:ongame/respawn_beacon/position] BeaconNumber 1

execute if score #mad BeaconNumber matches 3.. run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 3.. run scoreboard players add @e[predicate=mad:ongame/respawn_beacon/position] BeaconNumber 1

execute if score #mad BeaconNumber matches 4.. run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 4.. run scoreboard players add @e[predicate=mad:ongame/respawn_beacon/position] BeaconNumber 1

execute if score #mad BeaconNumber matches 5.. run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 5.. run scoreboard players add @e[predicate=mad:ongame/respawn_beacon/position] BeaconNumber 1

## Not teleport
tag @e[predicate=mad:ongame/respawn_beacon/position,scores={BeaconNumber=1}] add CenterOfWorld

## Teleport randomly
execute if score #mad WorldBorder matches 0 run spreadplayers ~ ~ 0 998 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 100 run spreadplayers ~ ~ 0 48 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 200 run spreadplayers ~ ~ 0 98 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 300 run spreadplayers ~ ~ 0 148 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 400 run spreadplayers ~ ~ 0 198 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 500 run spreadplayers ~ ~ 0 248 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 600 run spreadplayers ~ ~ 0 298 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 700 run spreadplayers ~ ~ 0 348 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 800 run spreadplayers ~ ~ 0 398 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 900 run spreadplayers ~ ~ 0 448 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1000 run spreadplayers ~ ~ 0 498 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1100 run spreadplayers ~ ~ 0 548 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1200 run spreadplayers ~ ~ 0 598 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1300 run spreadplayers ~ ~ 0 648 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1400 run spreadplayers ~ ~ 0 698 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1500 run spreadplayers ~ ~ 0 748 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1600 run spreadplayers ~ ~ 0 798 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1700 run spreadplayers ~ ~ 0 848 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1800 run spreadplayers ~ ~ 0 898 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 1900 run spreadplayers ~ ~ 0 948 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]
execute if score #mad WorldBorder matches 2000 run spreadplayers ~ ~ 0 998 false @e[predicate=mad:ongame/respawn_beacon/position,tag=!CenterOfWorld]

## Remove a tag
tag @e remove CenterOfWorld

## Set respawn beacon
execute as @e[predicate=mad:ongame/respawn_beacon/position] at @s align x align z run tp @s ~0.5 ~ ~0.5