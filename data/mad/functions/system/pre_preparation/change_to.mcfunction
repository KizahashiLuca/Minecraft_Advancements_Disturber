#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerule
gamerule doImmediateRespawn false
execute in minecraft:overworld run gamerule spectatorsGenerateChunks true
execute in minecraft:the_nether run gamerule spectatorsGenerateChunks true
execute in minecraft:the_end run gamerule spectatorsGenerateChunks true
execute in minecraft:overworld run gamerule announceAdvancements false
execute in minecraft:the_nether run gamerule announceAdvancements false
execute in minecraft:the_end run gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
execute if score #mad IsTeam matches 0 run gamerule showDeathMessages false
execute if score #mad IsTeam matches 0 if score #mad VisibleDeath matches 0 run gamerule showDeathMessages false
execute if score #mad IsTeam matches 1 if score #mad VisibleDeath matches 1 run gamerule showDeathMessages true
gamerule doLimitedCrafting false
execute if score #mad WeatherCycle matches 1 run gamerule doWeatherCycle true
execute if score #mad WeatherCycle matches 0 run gamerule doWeatherCycle false
execute if score #mad DaylightCycle matches 1 run gamerule doDaylightCycle true
execute if score #mad DaylightCycle matches 0 run gamerule doDaylightCycle false
gamerule reducedDebugInfo true
gamerule doMobSpawning true
gamerule keepInventory false
gamerule doFireTick true
team modify Participant nametagVisibility never

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]

## Forceload chunks
execute at @p[predicate=mad:player/host] run forceload add ~ ~

## Summon world spawn
execute at @p[predicate=mad:player/host] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["WorldSpawn"],NoGravity:1b,Invulnerable:1b}
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosX run data get entity @s Pos[0]
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosY run data get entity @s Pos[1]
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosZ run data get entity @s Pos[2]
execute as @e[predicate=mad:marker/world_spawn,limit=1] at @s run function mad:system/pre_preparation/detect_world_border

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
recipe give @a[tag=Participant] mad:mobile_respawn_beacon

## Set effect
effect clear @a
effect give @a minecraft:resistance 1000000 6 true
effect give @a minecraft:slow_falling 1000000 3 true
effect give @a minecraft:invisibility 1000000 1 true

## Set player number
scoreboard players set #mad Participant 1
scoreboard players set @a[tag=Participant] Participant 0
function mad:system/pre_preparation/numbering
tag @a[tag=Participant] remove Numbered

## Set scoreboards
scoreboard players set #mad Tick 19
scoreboard players set #mad Second 31
scoreboard players operation @a TimeLimit = #mad TimeLimit
scoreboard players operation @a Second = #mad TimeLimit
scoreboard players set @a Tick 0
scoreboard players set @a GetTimeLimit 0
scoreboard players set @a GeneralSecond 0
scoreboard players set @a OnGround 0
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0

## Change phase
scoreboard players set #mad Phase 19