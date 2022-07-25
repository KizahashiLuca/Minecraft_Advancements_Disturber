#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Process timer system
function mad:system/time_individual/time
function mad:system/time_individual/general_time

## Detect kill
execute as @a[predicate=mad:ongame/player/participant_alive,scores={KillTemp=1..}] at @s run function mad:system/ongame_individual/detect_kill

## Detect death
execute as @a[predicate=mad:ongame/player/participant_dying] run function mad:system/ongame_individual/detect_death

## Time over
kill @a[predicate=mad:ongame/player/participant_alive,scores={Second=..0}]

## Teleport player
execute as @a[scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world

## Detect transmitter
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseTransmitter=1..}] at @s run function mad:system/ongame/transmitter/main

## Detect armor upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseArmorUpgrader=1..}] at @s run function mad:system/ongame/armor_upgrader/main

## Detect tool upgrader
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseToolUpgrader=1..}] at @s run function mad:system/ongame/tool_upgrader/main

## Detect notice_of_thief
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseNoticeOfThief=1..}] at @s run function mad:system/ongame/notice_of_thief/main
execute as @a[tag=SetThief] run function mad:system/ongame/notice_of_thief/time/tick

## Detect evoker_fangs_wand
execute as @a[predicate=mad:ongame/player/participant_alive,scores={UseFungusStick=1..}] at @s run function mad:system/ongame/evoker_fangs_wand/main

## Detect return portal
execute as @e[predicate=mad:ongame/return_portal] at @s run function mad:system/ongame/return_portal/main

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumOfParticipants
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[predicate=mad:player/host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22