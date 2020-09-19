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
team modify Participant nametagVisibility never

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
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/pre_preparation_indivisual/set_world_border

## Set time
time set noon

## Set weather
weather clear

## Set player
clear @a[team=Participant]
experience set @a[team=Participant] 0 levels
experience set @a[team=Participant] 0 points

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Set effect
effect clear @a[team=Participant]
effect give @a[team=Participant] minecraft:resistance 1000000 6 true
effect give @a[team=Participant] minecraft:slow_falling 1000000 3 true

## Set player number
scoreboard players set #mad Participant 1
scoreboard players set @a[team=Participant] Participant 0
function mad:system/pre_preparation_indivisual/numbering
tag @a[team=Participant] remove Numbered

## Set scoreboards
scoreboard players set #mad Tick 19
scoreboard players set #mad Second 10
scoreboard players set @a[team=Participant] Tick 0
scoreboard players operation @a[team=Participant] TimeLimit = #mad TimeLimit
scoreboard players operation @a[team=Participant] Second = #mad TimeLimit
scoreboard players set @a OnGround 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0

## Set bossbar
execute as @a[team=Participant] run function mad:system/pre_preparation_indivisual/participant/branch

## Change phase
scoreboard players set #mad Phase 19