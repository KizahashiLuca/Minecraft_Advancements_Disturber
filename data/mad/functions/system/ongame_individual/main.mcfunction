#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Load add-on
execute if score #mad LoadAddon matches 1.. run scoreboard players remove #mad LoadAddon 1

## Log in the mid of the game
gamemode spectator @a[tag=!Participant,gamemode=!spectator]

## Process timer system
function mad:system/time_individual/time
function mad:system/time_individual/general_time

## Position
execute as @a run function mad:system/ongame/set_position/main

## Execute advancements
function mad:system/ongame/advancements/potage00/execute_advancements

## Detect kill
execute as @a[predicate=mad:ongame/player/participant_alive,scores={KillTemp=1..}] at @s run function mad:system/ongame_individual/detect_kill

## Detect death
execute as @a[predicate=mad:ongame/player/participant_dying] run function mad:system/ongame_individual/detect_death

## Time over
kill @a[predicate=mad:ongame/player/participant_alive,scores={Second=..0}]

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:0b}] at @s run function mad:system/ongame/minecart/main_not_onground
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame/minecart/main_onground

## Teleport player
execute as @a[scores={TeleportMessage=1..}] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[predicate=mad:ongame/player/participant_alive,predicate=mad:ongame/transmitter] at @s run function mad:system/ongame/transmitter/main
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseTransmitter=1}] at @s run function mad:system/ongame/transmitter/transmit_player/main
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseTransmitter=2}] at @s run function mad:system/ongame/transmitter/transmit_banner/main
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseTransmitter=3}] at @s run function mad:system/ongame/transmitter/transmit_beacon/main

## Detect armor upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseArmorUpgrader=1..}] at @s run function mad:system/ongame/armor_upgrader/main

## Detect tool upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseToolUpgrader=1..}] at @s run function mad:system/ongame/tool_upgrader/main

## Detect notice_of_thief
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseNoticeOfThief=1..}] at @s run function mad:system/ongame/notice_of_thief/main
execute as @a[tag=SetThief] run function mad:system/ongame/notice_of_thief/time/tick

## Detect return portal
execute as @e[predicate=mad:ongame/return_portal] at @s run function mad:system/ongame/return_portal/main

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumParticipant
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22