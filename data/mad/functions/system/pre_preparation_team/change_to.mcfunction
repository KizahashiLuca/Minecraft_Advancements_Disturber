#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set gamerule
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doLimitedCrafting false
execute if score #mad WeatherCycle matches 1 run gamerule doWeatherCycle true
execute if score #mad WeatherCycle matches 0 run gamerule doWeatherCycle false
execute if score #mad DaylightCycle matches 1 run gamerule doDaylightCycle true
execute if score #mad DaylightCycle matches 0 run gamerule doDaylightCycle false
gamerule doMobSpawning true
gamerule keepInventory false

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]

## Forceload chunks
execute as @p[tag=Host] at @s run forceload add ~ ~

## Save world spawn
execute as @p[tag=Host] at @s align x store result score #mad OriginX run data get entity @s Pos[0] 1.0
execute as @p[tag=Host] at @s align y store result score #mad OriginY run data get entity @s Pos[1] 1.0
execute as @p[tag=Host] at @s align z store result score #mad OriginZ run data get entity @s Pos[2] 1.0

## Summon world spawn
execute as @p[tag=Host] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WorldSpawn"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}

## Set world spawn
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/pre_preparation_team/set_world_border

## Set time
time set noon

## Set weather
weather clear

## Set player
clear @a[tag=Participant]
experience set @a[tag=Participant] 0 levels
experience set @a[tag=Participant] 0 points

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Set effect
effect clear @a[tag=Participant]
effect give @a[tag=Participant] minecraft:resistance 1000000 6 true
effect give @a[tag=Participant] minecraft:slow_falling 1000000 3 true

## Set player number
scoreboard players set #mad Participant 1
scoreboard players set @a[tag=Participant] Participant 0
function mad:system/pre_preparation_team/numbering
tag @a[tag=Participant] remove Numbered

## Set player number
execute if score #mad TeamNumber matches 1.. run tag @r[team=TeamA] add Leader
execute if score #mad TeamNumber matches 1.. run tag @r[team=TeamB] add Leader
execute if score #mad TeamNumber matches 1.. run tag @r[team=TeamC] add Leader
execute if score #mad TeamNumber matches 1.. run tag @r[team=TeamD] add Leader
execute if score #mad TeamNumber matches 1.. run tag @r[team=TeamE] add Leader

## Set scoreboards
scoreboard players set #mad Tick 19
scoreboard players set #mad Second 10
scoreboard players set @a[tag=Leader] Tick 0
scoreboard players operation @a[tag=Leader] TimeLimit = #mad TimeLimit
scoreboard players operation @a[tag=Leader] Second = #mad TimeLimit
scoreboard players set @a OnGround 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0

## Set bossbar
function mad:system/pre_preparation_team/set_bossbar

## Team
function mad:system/pre_preparation_team/set_gamerule

## Change phase
scoreboard players set #mad Phase 19