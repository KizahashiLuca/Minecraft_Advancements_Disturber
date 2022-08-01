#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[tag=Leader] NumOfTeamPlayer 0

## Team function
execute if score #mad NumberOfTeams matches 1.. if score #mad DeadTeamA matches 0 run function mad:system/ongame_team/team_function/team_a
execute if score #mad NumberOfTeams matches 2.. if score #mad DeadTeamB matches 0 run function mad:system/ongame_team/team_function/team_b
execute if score #mad NumberOfTeams matches 3.. if score #mad DeadTeamC matches 0 run function mad:system/ongame_team/team_function/team_c
execute if score #mad NumberOfTeams matches 4.. if score #mad DeadTeamD matches 0 run function mad:system/ongame_team/team_function/team_d
execute if score #mad NumberOfTeams matches 5.. if score #mad DeadTeamE matches 0 run function mad:system/ongame_team/team_function/team_e

## Calculate time per players
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive = @s Second
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive /= @s NumOfTeamPlayer

## Teleport player
execute as @a[predicate=mad:ongame/player/participant_dead,scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[predicate=mad:ongame/player/not_participant,scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[predicate=mad:ongame/player/participant_dead,scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world
execute as @a[predicate=mad:ongame/player/not_participant,scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world

## Detect respawn beacon
execute as @e[predicate=mad:ongame/respawn_beacon/structure] at @s run function mad:system/ongame/respawn_beacon/main
execute as @e[predicate=mad:ongame/respawn_beacon/position] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Detect mobile respawn beacon
execute as @e[predicate=mad:ongame/item_of_bedrock] at @s run function mad:system/ongame/mobile_respawn_beacon/summon_mobile_beacon
execute as @e[predicate=mad:ongame/mobile_respawn_beacon/structure] at @s run function mad:system/ongame/mobile_respawn_beacon/main
execute as @e[predicate=mad:ongame/mobile_respawn_beacon/position] at @s run function mad:system/ongame/mobile_respawn_beacon/construct_mobile_beacon/main

## Detect respawn banner
execute as @e[predicate=mad:ongame/respawn_banner/structure] at @s run function mad:system/ongame/respawn_banner/main
execute as @e[predicate=mad:ongame/respawn_banner/position] at @s run function mad:system/ongame/respawn_banner/set_respawn_banner

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumberOfTeams
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[predicate=mad:player/host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22