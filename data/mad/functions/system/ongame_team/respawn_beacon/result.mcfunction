###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Send a Common Message
tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"リスポーンビーコン 起動","color":"white","bold":true}]

## Send a Message that Suspect is always White
tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","bold":true}]

## Send a Common Message
tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
execute as @p[scores={NumRespawnBeacon=1..,Role=1}] run scoreboard players remove @p[scores={NumRespawnBeacon=1..,Role=1}] NumRespawnBeacon 1

## Reset Seer Trigger
scoreboard players reset @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn

## Set respawn beacon
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,nbt={Tags:["RespawnBeacon"]}] NumOfRespawn = @s Participant
scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,nbt={Tags:["RespawnBeacon"]}] Second 20