#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport player
execute as @a[scores={TeleportMinecart=1..}] run function mad:system/ongame/teleport_player/minecart
execute as @a[scores={TeleportCenter=1..}] run function mad:system/ongame/teleport_player/center_of_world

## Game Finish
scoreboard players operation #mad NumAlive = #mad NumOfParticipants
scoreboard players operation #mad NumAlive -= #mad NumDead
execute if score #mad NumAlive matches 0..1 if score #mad ExitMessage matches 0 run function mad:system/ongame/exit_message
execute as @p[predicate=mad:player/host,scores={ExitMessage=1}] run scoreboard players set #mad Phase 22