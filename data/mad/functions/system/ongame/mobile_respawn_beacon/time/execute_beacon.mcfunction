#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Execute a beacon
execute as @a[tag=Participant,tag=MobileRespawnBannerSet] if score @s MobileBeaconNum = @e[type=minecraft:area_effect_cloud,tag=RespawnBeaconTick,limit=1] MobileBeaconNum run tag @s add RespawnSoon
tp @p[tag=RespawnSoon] ~ ~1 ~
clear @p[tag=RespawnSoon]
gamemode survival @p[tag=RespawnSoon]
scoreboard players set @p[tag=RespawnSoon] MobileBeaconNum 0
scoreboard players set @p[tag=RespawnSoon] Phase 21
scoreboard players set @p[tag=RespawnSoon] Death 0

## Send messages
execute as @p[tag=RespawnSoon,team=TeamA] run tellraw @a[team=TeamA] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamB] run tellraw @a[team=TeamB] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamC] run tellraw @a[team=TeamC] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamD] run tellraw @a[team=TeamD] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamE] run tellraw @a[team=TeamE] ["",{"text":"[蘇生措置]  ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":" がリスポーンしました。","color":"green"}]

## Grand advancement
execute as @p[tag=RespawnSoon,team=TeamA] run advancement grant @p[team=TeamA,scores={Phase=21,Death=0},sort=nearest] only mad:friendship
execute as @p[tag=RespawnSoon,team=TeamB] run advancement grant @p[team=TeamB,scores={Phase=21,Death=0},sort=nearest] only mad:friendship
execute as @p[tag=RespawnSoon,team=TeamC] run advancement grant @p[team=TeamC,scores={Phase=21,Death=0},sort=nearest] only mad:friendship
execute as @p[tag=RespawnSoon,team=TeamD] run advancement grant @p[team=TeamD,scores={Phase=21,Death=0},sort=nearest] only mad:friendship
execute as @p[tag=RespawnSoon,team=TeamE] run advancement grant @p[team=TeamE,scores={Phase=21,Death=0},sort=nearest] only mad:friendship

## Remove tags
tag @p[tag=RespawnSoon] remove MobileRespawnBannerSet
tag @p[tag=RespawnSoon] remove RespawnSoon

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