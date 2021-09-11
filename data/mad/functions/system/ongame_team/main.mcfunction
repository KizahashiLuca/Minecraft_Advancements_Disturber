#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Load add-on
execute if score #mad LoadAddon matches 1.. run scoreboard players remove #mad LoadAddon 1

## Log in the mid of the game
execute as @a[team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,gamemode=!spectator] run function mad:system/ongame/mid_login

## Process timer system
function mad:system/time_team/time
function mad:system/time_team/general_time

## Position
execute as @a run function mad:system/ongame/set_position/main

## Execute advancements
function mad:system/ongame/advancements/potage00/execute_advancements

## Detect death
execute as @a[predicate=mad:ongame/player/participant_dying] run function mad:system/ongame_team/detect_death

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
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:0b}] at @s run function mad:system/ongame/minecart/main_not_onground
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame/minecart/main_onground

## Teleport player
execute as @a[predicate=mad:ongame/player/participant_dead,scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[predicate=mad:ongame/player/not_participant,scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[predicate=mad:ongame/player/participant_dead,scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world
execute as @a[predicate=mad:ongame/player/not_participant,scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world

## Detect transmitter
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseTransmitter=1..}] at @s run function mad:system/ongame/transmitter/main

## Detect armor upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseArmorUpgrader=1..}] at @s run function mad:system/ongame/armor_upgrader/main

## Detect tool upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseToolUpgrader=1..}] at @s run function mad:system/ongame/tool_upgrader/main

## Detect emergency_call
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseEmergencyCall=1..}] at @s run function mad:system/ongame/emergency_call/main

## Detect notice_of_thief
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseNoticeOfThief=1..}] at @s run function mad:system/ongame/notice_of_thief/main
execute as @a[tag=SetThief] run function mad:system/ongame/notice_of_thief/time/tick

## Detect return portal
execute as @e[predicate=mad:ongame/return_portal] at @s run function mad:system/ongame/return_portal/main

## Detect respawn beacon
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] at @s run function mad:system/ongame/respawn_beacon/main
execute as @e[predicate=mad:ongame/respawn_beacon_position] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Detect mobile respawn beacon
execute as @e[predicate=mad:ongame/mobile_respawn_beacon_position] at @s run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=MobileRespawnBeacon] at @s run function mad:system/ongame/mobile_respawn_beacon/main

## Detect respawn banner
execute as @e[predicate=mad:ongame/respawn_banner] at @s run function mad:system/ongame/respawn_banner/main
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead"]}}}] at @s run function mad:system/ongame/respawn_banner/set_respawn_banner

## Set scoreboard
scoreboard players set @a Sneak 0

## Game Finish
scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22