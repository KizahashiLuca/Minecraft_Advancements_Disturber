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

## Process timer system
function mad:system/time_team/time
function mad:system/time_team/general_time

execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s if entity @p[scores={Phase=21,Death=0,Sneak=1..},distance=..1.5] run function mad:system/ongame_team/respawn_beacon/time/tick
scoreboard players set @a Sneak 0
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s run function mad:system/ongame_team/respawn_beacon/set_beacon
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["RespawnBeacon"]}] at @s run function mad:system/ongame_team/respawn_beacon/send_gauge

## Detect advancements
function mad:system/ongame_team/detect_advancements

## Detect kill / death
execute as @a[tag=Participant,scores={KillTemp=1..}] run function mad:system/ongame_team/detect_kill
execute as @a[tag=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_team/detect_death

## Calculate time per players
scoreboard players set @a[tag=Leader] NumOfTeamPlayer 0
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive = @s Second
execute as @a[team=TeamA,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamA,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamB,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamB,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamC,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamD,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamE,tag=Leader] NumOfTeamPlayer 1
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive /= @s NumOfTeamPlayer

## Time over
execute as @a[tag=Leader,scores={Phase=21,Death=0,Second=..0},team=TeamA] run kill @a[team=TeamA,gamemode=!spectator]
execute as @a[tag=Leader,scores={Phase=21,Death=0,Second=..0},team=TeamB] run kill @a[team=TeamB,gamemode=!spectator]
execute as @a[tag=Leader,scores={Phase=21,Death=0,Second=..0},team=TeamC] run kill @a[team=TeamC,gamemode=!spectator]
execute as @a[tag=Leader,scores={Phase=21,Death=0,Second=..0},team=TeamD] run kill @a[team=TeamD,gamemode=!spectator]
execute as @a[tag=Leader,scores={Phase=21,Death=0,Second=..0},team=TeamE] run kill @a[team=TeamE,gamemode=!spectator]

## Detect team end
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamA matches 0 unless entity @p[team=TeamA,scores={Phase=21,Death=0}] run function mad:system/ongame_team/player_death/team_a
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamB matches 0 unless entity @p[team=TeamB,scores={Phase=21,Death=0}] run function mad:system/ongame_team/player_death/team_b
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamC matches 0 unless entity @p[team=TeamC,scores={Phase=21,Death=0}] run function mad:system/ongame_team/player_death/team_c
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamD matches 0 unless entity @p[team=TeamD,scores={Phase=21,Death=0}] run function mad:system/ongame_team/player_death/team_d
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamE matches 0 unless entity @p[team=TeamE,scores={Phase=21,Death=0}] run function mad:system/ongame_team/player_death/team_e

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame_team/minecart/main

## Teleport player
function mad:system/ongame/teleport_player/main

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