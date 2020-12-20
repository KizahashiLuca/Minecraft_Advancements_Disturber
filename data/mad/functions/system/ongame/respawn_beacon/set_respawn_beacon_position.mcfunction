#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Summon armor stand
execute if score #mad BeaconNumber matches 1.. run summon minecraft:armor_stand ~ ~160 ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 1.. run scoreboard players add @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] BeaconNumber 1

execute if score #mad BeaconNumber matches 2.. run summon minecraft:armor_stand ~ ~160 ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 2.. run scoreboard players add @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] BeaconNumber 1

execute if score #mad BeaconNumber matches 3.. run summon minecraft:armor_stand ~ ~160 ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 3.. run scoreboard players add @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] BeaconNumber 1

execute if score #mad BeaconNumber matches 4.. run summon minecraft:armor_stand ~ ~160 ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 4.. run scoreboard players add @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] BeaconNumber 1

execute if score #mad BeaconNumber matches 5.. run summon minecraft:armor_stand ~ ~160 ~ {NoAI:1b,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["RespawnBeaconPosition"]}
execute if score #mad BeaconNumber matches 5.. run scoreboard players add @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] BeaconNumber 1

## Teleport randomly
execute if score #mad WorldBorder matches 0 run spreadplayers ~ ~ 0 998 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 100 run spreadplayers ~ ~ 0 48 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 200 run spreadplayers ~ ~ 0 98 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 300 run spreadplayers ~ ~ 0 148 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 400 run spreadplayers ~ ~ 0 198 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 500 run spreadplayers ~ ~ 0 248 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 600 run spreadplayers ~ ~ 0 298 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 700 run spreadplayers ~ ~ 0 348 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 800 run spreadplayers ~ ~ 0 398 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 900 run spreadplayers ~ ~ 0 448 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1000 run spreadplayers ~ ~ 0 498 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1100 run spreadplayers ~ ~ 0 548 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1200 run spreadplayers ~ ~ 0 598 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1300 run spreadplayers ~ ~ 0 648 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1400 run spreadplayers ~ ~ 0 698 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1500 run spreadplayers ~ ~ 0 748 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1600 run spreadplayers ~ ~ 0 798 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1700 run spreadplayers ~ ~ 0 848 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1800 run spreadplayers ~ ~ 0 898 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 1900 run spreadplayers ~ ~ 0 948 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]
execute if score #mad WorldBorder matches 2000 run spreadplayers ~ ~ 0 998 false @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]

## Set respawn beacon
execute as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] at @s align x align z run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon