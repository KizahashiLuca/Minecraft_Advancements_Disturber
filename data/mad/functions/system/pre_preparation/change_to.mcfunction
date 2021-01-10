#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set gamerule
gamerule doImmediateRespawn true
gamerule spectatorsGenerateChunks true
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
execute at @p[tag=Host] run forceload add ~ ~

## Save world spawn
execute at @p[tag=Host] align x store result score #mad OriginX run data get entity @s Pos[0] 1.0
execute at @p[tag=Host] align y store result score #mad OriginY run data get entity @s Pos[1] 1.0
execute at @p[tag=Host] align z store result score #mad OriginZ run data get entity @s Pos[2] 1.0

## Summon world spawn
execute at @p[tag=Host] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WorldSpawn"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}

## Set world spawn
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/pre_preparation/set_world_border

## Set time
time set noon

## Set weather
weather clear

## Set player
clear @a
experience set @a 0 levels
experience set @a 0 points

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Set effect
effect clear @a
effect give @a minecraft:resistance 1000000 6 true
effect give @a minecraft:slow_falling 1000000 3 true

## Set player number
scoreboard players set #mad Participant 1
scoreboard players set @a[tag=Participant] Participant 0
function mad:system/pre_preparation/numbering
tag @a[tag=Participant] remove Numbered

## Set scoreboards
scoreboard players set #mad Tick 19
scoreboard players set #mad Second 10
scoreboard players operation @a TimeLimit = #mad TimeLimit
scoreboard players operation @a Second = #mad TimeLimit
scoreboard players set @a Tick 0
scoreboard players set @a GetTimeLimit 0
scoreboard players set @a GeneralSecond 0
scoreboard players set @a GeneralTick 0
scoreboard players set @a OnGround 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0

## Set bossbar
execute if score #mad IsTeam matches 0 as @a[tag=Participant] run function mad:system/pre_preparation/individual/branch

## Set bossbar & gamerule
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 1.. run function mad:system/pre_preparation/team/team_a
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 2.. run function mad:system/pre_preparation/team/team_b
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 3.. run function mad:system/pre_preparation/team/team_c
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 4.. run function mad:system/pre_preparation/team/team_d
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 5.. run function mad:system/pre_preparation/team/team_e

## Change phase
scoreboard players set #mad Phase 19