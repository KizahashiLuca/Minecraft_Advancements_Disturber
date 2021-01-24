#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Log in the mid of the game
gamemode spectator @a[team=!Participant,gamemode=!spectator]
team leave @a[team=!Participant,team=!]

## Process timer system
function mad:system/time_individual/time
function mad:system/time_individual/general_time

## Position
execute as @a run function mad:system/ongame/set_position

## Execute advancements
function mad:system/ongame/advancements/potage00/execute_advancements
function mad:system/ongame/advancements/achievements/execute_advancements

## Detect kill
execute as @a[team=Participant,scores={Phase=21,Death=0,KillTemp=1..}] run function mad:system/ongame_individual/detect_kill

## Detect death
execute as @a[team=Participant,scores={Phase=21,Death=1}] run function mad:system/ongame_individual/detect_death

## Time over
kill @a[team=Participant,scores={Phase=21,Death=0,Second=..0}]

## Minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:0b}] at @s run function mad:system/ongame/minecart/main_not_onground
execute as @e[type=minecraft:chest_minecart,tag=Minecart,nbt={OnGround:1b}] at @s run function mad:system/ongame/minecart/main_onground

## Teleport player
execute as @a[gamemode=!survival,scores={TeleportMessage=1}] run function mad:system/ongame/teleport_player/main

## Detect transmitter
execute as @a[team=Participant,scores={Phase=21,Death=0,UseTransmitter=1..}] at @s run function mad:system/ongame/transmitter_player/main

## Detect armor upgrader
execute as @a[team=Participant,scores={Phase=21,Death=0,UseArmorUpgrader=1..}] at @s run function mad:system/ongame/armor_upgrader/main

## Detect tool upgrader
execute as @a[team=Participant,scores={Phase=21,Death=0,UseToolUpgrader=1..}] at @s run function mad:system/ongame/tool_upgrader/main

## Detect notice_of_thief
execute as @a[team=Participant] at @s run function mad:system/ongame/notice_of_thief/main

## Detect return portal
execute as @e[type=minecraft:armor_stand,tag=MinecartItem,tag=ReturnPortal] at @s run function mad:system/ongame/return_portal/main

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumParticipant
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[tag=Host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22
execute if score #mad Phase matches 22 run function mad:system/finish/game_exit