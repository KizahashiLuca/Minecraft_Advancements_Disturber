#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set gamerule
gamerule announceAdvancements false

## Process timer system
function mad:system/time_team/time
function mad:system/time_team/general_time

## Position
function mad:system/ongame/set_position

## Detect kill / death
execute as @a[tag=Participant,scores={Phase=21,Death=0,KillTemp=1..}] run function mad:system/ongame_team/detect_kill

## Detect death
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
execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamA matches 1 as @a[scores={TeleportMessage=1},team=TeamA] run function mad:system/ongame/teleport_player/main
execute if score #mad TeamNumber matches 2.. if score #mad DeadTeamB matches 1 as @a[scores={TeleportMessage=1},team=TeamB] run function mad:system/ongame/teleport_player/main
execute if score #mad TeamNumber matches 3.. if score #mad DeadTeamC matches 1 as @a[scores={TeleportMessage=1},team=TeamC] run function mad:system/ongame/teleport_player/main
execute if score #mad TeamNumber matches 4.. if score #mad DeadTeamD matches 1 as @a[scores={TeleportMessage=1},team=TeamD] run function mad:system/ongame/teleport_player/main
execute if score #mad TeamNumber matches 5.. if score #mad DeadTeamE matches 1 as @a[scores={TeleportMessage=1},team=TeamE] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] run function mad:system/ongame/transmitter/detect_transmitter

## Detect respawn beacon
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,tag=!SetRespawnBanner] at @s if block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/detect_respawn_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,tag=SetRespawnBanner] at @s unless block ~ ~1 ~ #mad:banner run function mad:system/ongame/respawn_beacon/reset_respawn_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] at @s run data modify block ~ ~-1 ~ Age set value 200L

execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,tag=SetRespawnBanner] at @s if entity @p[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run function mad:system/ongame/respawn_beacon/time/tick
scoreboard players set @a Sneak 0
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,tag=SetRespawnBanner] at @s run function mad:system/ongame/respawn_beacon/send_gauge

## Set respawn banner
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead"]}}}] at @s run function mad:system/ongame/respawn_beacon/set_respawn_banner
execute as @e[type=minecraft:armor_stand,tag=RespawnBanner] at @s unless block ~ ~ ~ minecraft:chest{Items:[{tag:{Tags:["RespawnBannerFromChest"]}}]} run function mad:system/ongame/respawn_beacon/detect_respawn_banner
execute as @e[type=minecraft:armor_stand,tag=RespawnBanner] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..0.2,tag=RespawnBanner] run function mad:system/ongame/respawn_beacon/break_respawn_banner

## Game Finish
scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame_team/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish_team/game_exit