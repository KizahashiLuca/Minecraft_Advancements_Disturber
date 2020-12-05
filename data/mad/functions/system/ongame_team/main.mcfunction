#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Process timer system
function mad:system/time_team/time
function mad:system/time_team/general_time

## Respawn beacon system
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s if entity @p[scores={Phase=21,Death=0,Sneak=1..},distance=..1.5] run function mad:system/ongame_team/respawn_beacon/time/tick
scoreboard players set @a Sneak 0
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s run function mad:system/ongame_team/respawn_beacon/set_beacon
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s run function mad:system/ongame_team/respawn_beacon/send_gauge

## Detect kill / death
execute as @a[tag=Participant,scores={KillTemp=1..}] run function mad:system/ongame_team/detect_kill
execute as @a[tag=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_team/detect_death

## Set scoreboard
scoreboard players set @a[tag=Leader] NumOfTeamPlayer 0

## Team function
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamA matches 0 run function mad:system/ongame_team/team_function/team_a
execute if score #mad TeamNumber matches 2.. if score #mad DeadTeamB matches 0 run function mad:system/ongame_team/team_function/team_b
execute if score #mad TeamNumber matches 3.. if score #mad DeadTeamC matches 0 run function mad:system/ongame_team/team_function/team_c
execute if score #mad TeamNumber matches 4.. if score #mad DeadTeamD matches 0 run function mad:system/ongame_team/team_function/team_d
execute if score #mad TeamNumber matches 5.. if score #mad DeadTeamE matches 0 run function mad:system/ongame_team/team_function/team_e

## Calculate time per players
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive = @s Second
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive /= @s NumOfTeamPlayer

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame_team/minecart/main

## Teleport player
execute as @a[gamemode=!survival,scores={TeleportMessage=1}] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] run function mad:system/ongame/transmitter/detect_transmitter

## Detect respawn beacon
execute as @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンビーコン"}'}] at @s run function mad:system/ongame_team/respawn_beacon/detect_respawn_beacon
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseRespawnBeacon=1..}] run function mad:system/ongame_team/respawn_beacon/settle_respawn_beacon
execute as @a[tag=Participant,scores={NumRespawnBeacon=1..}] run function mad:system/ongame_team/respawn_beacon/main

## Game Finish
scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame_team/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish_team/game_exit