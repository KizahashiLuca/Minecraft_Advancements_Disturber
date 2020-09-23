#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set Scoreboard
scoreboard players set @s Role 1
scoreboard players reset @s TargetOfRespawn

## Detect Page Role
execute as @s[scores={TurnPageRight=1,NumRespawnBeacon=1..}] run function mad:system/ongame_team/respawn_beacon/send_message
execute as @s[scores={TurnPageLeft=1,NumRespawnBeacon=1..}] run function mad:system/ongame_team/respawn_beacon/send_message
execute as @s[scores={TurnPageRight=1,NumRespawnBeacon=0}] run function mad:system/ongame_team/respawn_beacon/message_error
execute as @s[scores={TurnPageLeft=1,NumRespawnBeacon=0}] run function mad:system/ongame_team/respawn_beacon/message_error

## Send a Result to respawn beacon
execute as @s[scores={RespawnTrigger=1..10,NumRespawnBeacon=1..}] run function mad:system/ongame_team/respawn_beacon/calculation
execute as @s[scores={RespawnTrigger=1..10,NumRespawnBeacon=0}] run function mad:system/ongame_team/respawn_beacon/message_error

## Send a Result Message to respawn beacon
execute as @a[tag=Participant] if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn run function mad:system/ongame_team/respawn_beacon/result

## Reset Scoreboard
scoreboard players reset @s Role

## Enable respawn beacon Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RespawnTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RespawnTrigger

## Death
scoreboard players set @s[scores={Phase=22,Death=1..2}] NumRespawnBeacon 0