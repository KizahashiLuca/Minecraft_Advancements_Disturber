#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Forceload chunks
execute as @p[tag=Host] at @s run forceload add ~ ~

## Save world spawn
execute as @p[tag=Host] at @s align x store result score #mad OriginX run data get entity @s Pos[0] 1.0
execute as @p[tag=Host] at @s align y store result score #mad OriginY run data get entity @s Pos[1] 1.0
execute as @p[tag=Host] at @s align z store result score #mad OriginZ run data get entity @s Pos[2] 1.0

## Set world spawn
execute as @p[tag=Host] at @s run setworldspawn ~ ~ ~
execute as @p[tag=Host] at @s run spawnpoint @a ~ ~ ~

## Set world border
execute as @p[tag=Host] at @s run worldborder center ~ ~
execute if score #mad WorldBorder matches 0 run worldborder set 60000002
execute if score #mad WorldBorder matches 100 run worldborder set 102
execute if score #mad WorldBorder matches 200 run worldborder set 202
execute if score #mad WorldBorder matches 300 run worldborder set 302
execute if score #mad WorldBorder matches 400 run worldborder set 402
execute if score #mad WorldBorder matches 500 run worldborder set 502
execute if score #mad WorldBorder matches 600 run worldborder set 602
execute if score #mad WorldBorder matches 700 run worldborder set 702
execute if score #mad WorldBorder matches 800 run worldborder set 802
execute if score #mad WorldBorder matches 900 run worldborder set 902
execute if score #mad WorldBorder matches 1000 run worldborder set 1002
execute if score #mad WorldBorder matches 1100 run worldborder set 1102
execute if score #mad WorldBorder matches 1200 run worldborder set 1202
execute if score #mad WorldBorder matches 1300 run worldborder set 1302
execute if score #mad WorldBorder matches 1400 run worldborder set 1402
execute if score #mad WorldBorder matches 1500 run worldborder set 1502
execute if score #mad WorldBorder matches 1600 run worldborder set 1602
execute if score #mad WorldBorder matches 1700 run worldborder set 1702
execute if score #mad WorldBorder matches 1800 run worldborder set 1802
execute if score #mad WorldBorder matches 1900 run worldborder set 1902
execute if score #mad WorldBorder matches 2000 run worldborder set 2002

## Teleport
scoreboard players operation #mad WorldBorder /= #mad 2
execute as @a[team=Participant] run function mad:system/preparation/random_teleport/main

## Clear inventory
clear @a[team=Participant]
effect clear @a[team=Participant]
effect give @a[team=Participant] minecraft:resistance 1000000 6 true
effect give @a[team=Participant] minecraft:slow_falling 1000000 3 true

## Set player number
scoreboard players set #mad Participant 1
scoreboard players set @a[team=Participant] Participant 0
function mad:system/preparation/numbering
tag @a[team=Participant] remove Numbered

## Set scoreboards
scoreboard players set @a[team=Participant] Tick 0
scoreboard players operation @a[team=Participant] TimeLimit = #mad TimeLimit
scoreboard players operation @a[team=Participant] Second = #mad TimeLimit
scoreboard players set @a OnGround 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0

## Set bossbar
execute as @a[team=Participant] run function mad:system/preparation/participant/branch

## Change phase
scoreboard players set #mad Phase 20