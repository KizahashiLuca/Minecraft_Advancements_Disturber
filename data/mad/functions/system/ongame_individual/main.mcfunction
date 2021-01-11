#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Process timer system
function mad:system/time_individual/time
function mad:system/time_individual/general_time

## Position
execute as @a run function mad:system/ongame/set_position

## Execute advancements
function mad:system/ongame/advancements/potage00/execute_advancements

## Detect kill
execute as @a[team=Participant,scores={Phase=21,Death=0,KillTemp=1..}] run function mad:system/ongame_individual/detect_kill

## Detect death
execute as @a[team=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_individual/detect_death

## Time over
kill @a[team=Participant,scores={Phase=21,Death=0,Second=..0}]

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame_individual/minecart/main

## Teleport player
execute as @a[gamemode=!survival,scores={TeleportMessage=1}] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[team=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] at @s run function mad:system/ongame/transmitter/main

## Detect upgrader
execute as @a[team=Participant,scores={Phase=21,Death=0,UseUpgrader=1..}] at @s run function mad:system/ongame/upgrader/main

## Detect notice_of_thief
execute as @a[team=Participant] at @s run function mad:system/ongame/notice_of_thief/main

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumParticipant
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame_individual/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish_individual/game_exit