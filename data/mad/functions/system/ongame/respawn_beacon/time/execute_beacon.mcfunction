#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Execute a beacon
execute as @s[scores={BeaconNumber=1}] run tag @p[tag=Participant,tag=RespawnBannerSet1] add RespawnSoon
execute as @s[scores={BeaconNumber=2}] run tag @p[tag=Participant,tag=RespawnBannerSet2] add RespawnSoon
execute as @s[scores={BeaconNumber=3}] run tag @p[tag=Participant,tag=RespawnBannerSet3] add RespawnSoon
execute as @s[scores={BeaconNumber=4}] run tag @p[tag=Participant,tag=RespawnBannerSet4] add RespawnSoon
execute as @s[scores={BeaconNumber=5}] run tag @p[tag=Participant,tag=RespawnBannerSet5] add RespawnSoon
tp @p[tag=RespawnSoon] ~ ~1 ~
clear @p[tag=RespawnSoon]
gamemode survival @p[tag=RespawnSoon]
scoreboard players set @p[tag=RespawnSoon] Phase 21
scoreboard players set @p[tag=RespawnSoon] Death 0

execute as @p[tag=RespawnSoon,team=TeamA] run tellraw @a[team=TeamA] ["",{"text":"[リスポーン] ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":"がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamB] run tellraw @a[team=TeamB] ["",{"text":"[リスポーン] ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":"がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamC] run tellraw @a[team=TeamC] ["",{"text":"[リスポーン] ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":"がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamD] run tellraw @a[team=TeamD] ["",{"text":"[リスポーン] ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":"がリスポーンしました。","color":"green"}]
execute as @p[tag=RespawnSoon,team=TeamE] run tellraw @a[team=TeamE] ["",{"text":"[リスポーン] ","color":"green"},{"selector":"@p[tag=RespawnSoon]"},{"text":"がリスポーンしました。","color":"green"}]

tag @p[tag=RespawnSoon] remove RespawnBannerSet1
tag @p[tag=RespawnSoon] remove RespawnBannerSet2
tag @p[tag=RespawnSoon] remove RespawnBannerSet3
tag @p[tag=RespawnSoon] remove RespawnBannerSet4
tag @p[tag=RespawnSoon] remove RespawnBannerSet5
tag @p[tag=RespawnSoon] remove RespawnBannerSet
tag @p[tag=RespawnSoon] remove RespawnSoon

particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.8 0.2 0.05 1000 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~1 ~ 1.0 2.0
data modify block ~ ~-1 ~ Age set value 0L

## Reset a beacon
scoreboard players set @s Second 20
scoreboard players set @s Tick 0
setblock ~ ~1 ~ minecraft:air replace

## Reset data 
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag
tag @s remove SetRespawnBanner