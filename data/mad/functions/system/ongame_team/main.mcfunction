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

## Detect advancements
function mad:system/ongame_team/detect_advancements

## Detect kill / death
execute as @a[tag=Participant,scores={Phase=21,Death=0,KillTemp=1..}] run function mad:system/ongame_team/detect_kill

## Detect death
execute as @a[tag=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_team/detect_death

## Time over
execute as @a[tag=Leader,scores={Second=..0},team=TeamA] run kill @a[team=TeamA]
execute as @a[tag=Leader,scores={Second=..0},team=TeamB] run kill @a[team=TeamB]
execute as @a[tag=Leader,scores={Second=..0},team=TeamC] run kill @a[team=TeamC]
execute as @a[tag=Leader,scores={Second=..0},team=TeamD] run kill @a[team=TeamD]
execute as @a[tag=Leader,scores={Second=..0},team=TeamE] run kill @a[team=TeamE]

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame_team/minecart/main

## Teleport player
function mad:system/ongame_team/teleport_player/main

## Detect transmitter
execute as @a[tag=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] run function mad:system/ongame_team/transmitter/detect_transmitter

## Game Finish
scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame_team/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish_team/game_exit