#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute a beacon
execute as @a[tag=Participant,tag=MobileRespawnBannerSet] if score @s MobileBeaconNum = @e[type=minecraft:area_effect_cloud,tag=RespawnBeaconTick,limit=1] MobileBeaconNum run tag @s add RespawnSoon
tp @p[tag=RespawnSoon] ~ ~1 ~
clear @p[tag=RespawnSoon]
gamemode survival @p[tag=RespawnSoon]
scoreboard players set @p[tag=RespawnSoon] MobileBeaconNum 0
scoreboard players set @p[tag=RespawnSoon] Phase 21
scoreboard players set @p[tag=RespawnSoon] Death 0

## Add tags
execute as @p[tag=RespawnSoon,team=TeamA] run tag @a[team=TeamA] add RespawnTeam
execute as @p[tag=RespawnSoon,team=TeamB] run tag @a[team=TeamB] add RespawnTeam
execute as @p[tag=RespawnSoon,team=TeamC] run tag @a[team=TeamC] add RespawnTeam
execute as @p[tag=RespawnSoon,team=TeamD] run tag @a[team=TeamD] add RespawnTeam
execute as @p[tag=RespawnSoon,team=TeamE] run tag @a[team=TeamE] add RespawnTeam

## Send messages
tellraw @a[tag=RespawnTeam] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]

## Grand advancement
advancement grant @p[tag=RespawnTeam,predicate=mad:ongame/player/participant_alive,sort=nearest] only mad:potage00/friendship

## Remove tags
tag @p[tag=RespawnSoon] remove MobileRespawnBannerSet
tag @p[tag=RespawnSoon] remove RespawnSoon
tag @a remove RespawnTeam

## Particle
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.8 0.2 0.05 1000 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~1 ~ 1.0 2.0

## Reset a beacon
scoreboard players set @s Second 20
scoreboard players set @s Tick 0
setblock ~ ~1 ~ minecraft:air replace

## Reset data 
fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace

## Remove a tag
kill @s