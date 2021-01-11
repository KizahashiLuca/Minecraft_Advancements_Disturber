#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Process timer system
function mad:system/time_team/time
function mad:system/time_team/general_time

## Position
execute as @a run function mad:system/ongame/set_position

## Execute advancements
function mad:system/ongame/advancements/potage00/execute_advancements

## Detect death
execute as @a[tag=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_team/detect_death

## Set scoreboard
scoreboard players set @a[tag=Leader] NumOfTeamPlayer 0

## Detect time over
execute as @a[tag=Participant,tag=Leader,scores={Second=..0}] run function mad:system/ongame_team/detect_time_over

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
execute as @a[tag=Participant,scores={TeleportMessage=1}] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] at @s run function mad:system/ongame/transmitter/main

## Detect upgrader
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseUpgrader=1..}] at @s run function mad:system/ongame/upgrader/main

## Detect emergency_call
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseEmergencyCall=1..}] at @s run function mad:system/ongame/emergency_call/main

## Detect notice_of_thief
execute as @a[tag=Participant] at @s run function mad:system/ongame/notice_of_thief/main

## Detect respawn beacon
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] at @s run function mad:system/ongame/respawn_beacon/main

## Detect mobile respawn beacon
execute as @e[type=minecraft:armor_stand,tag=MinecartItem,tag=MobileRespawnBeacon] at @s run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=MobileRespawnBeacon] at @s run function mad:system/ongame/mobile_respawn_beacon/main

## Detect respawn banner
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead"]}}}] at @s run function mad:system/ongame/respawn_banner/set_respawn_banner
execute as @e[type=minecraft:armor_stand,tag=RespawnBanner] at @s run function mad:system/ongame/respawn_banner/main

## Set scoreboard
scoreboard players set @a Sneak 0

## Game Finish
scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame_team/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish_team/game_exit