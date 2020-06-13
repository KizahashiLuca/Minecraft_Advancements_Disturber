#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Process timer system
execute as @a[team=Participant,scores={Phase=21,Death=0}] run function mad:system/time/time
function mad:system/time/general_time

## Detect advancements
execute as @a[team=Participant,scores={Phase=21,Death=0}] run function mad:system/ongame/detect_advancements

## Detect kill / death
execute as @a[team=Participant,scores={Phase=21,Death=0,KillTemp=1..}] run function mad:system/ongame/detect_kill

## Detect death
execute as @a[team=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame/detect_death

## Detect time over
execute as @a[team=Participant,scores={Phase=21,Death=0,Second=0,Tick=0}] run kill @s

## Detect teleport to minecart
execute as @a[gamemode=spectator,scores={TeleportMessage=1..}] run function mad:system/ongame/minecart/player_teleport
scoreboard players set @a TeleportMessage 0
scoreboard players enable @a TeleportMessage

## Detect transmitter
execute as @a[team=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] run function mad:system/ongame/transmitter/detect_transmitter

## Game Finish
scoreboard players set #mad NumAlive 0
execute as @a[team=Participant,scores={Phase=21,Death=0}] run scoreboard players add #mad NumAlive 1
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish/game_exit