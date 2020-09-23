#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set player number
execute as @s[team=TeamA] run tag @a[team=TeamA] add RespawnTeam
execute as @s[team=TeamB] run tag @a[team=TeamB] add RespawnTeam
execute as @s[team=TeamC] run tag @a[team=TeamC] add RespawnTeam
execute as @s[team=TeamD] run tag @a[team=TeamD] add RespawnTeam
execute as @s[team=TeamE] run tag @a[team=TeamE] add RespawnTeam

scoreboard players set @p[tag=RespawnTeam,tag=Leader] NumDead 0
execute as @a[tag=RespawnTeam,scores={Phase=22,Death=1..2}] run scoreboard players add @p[tag=RespawnTeam,tag=Leader] NumDead 1
scoreboard players set #mad NumOfRespawn 1
scoreboard players set @a[tag=RespawnTeam] NumOfRespawn 0
function mad:system/ongame_team/respawn_beacon/numbering
tag @a[tag=RespawnTeam] remove Numbered

## Setblock
fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air
function mad:system/ongame_team/respawn_beacon/set_beacon

## Set scoreboard
scoreboard players operation @s TurnPageMax = @p[tag=RespawnTeam,tag=Leader] NumDead
scoreboard players operation @s TurnPageMax /= #mad 10
scoreboard players set @s TurnPageNum 0
tag @a[tag=RespawnTeam] remove RespawnTeam

## Send message
execute as @s run function mad:system/ongame_team/respawn_beacon/send_message

## Set scoreboard
scoreboard players set @s UseRespawnBeacon 0
scoreboard players enable @s UseRespawnBeacon
scoreboard players add @s NumRespawnBeacon 1