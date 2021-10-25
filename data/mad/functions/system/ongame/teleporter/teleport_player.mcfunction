#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add DetectTeleporterDest

## Detect owner
execute as @a[tag=Participant] if score @s UUID0 = @e[tag=DetectTeleporterDest,limit=1] UUID0 if score @s UUID1 = @e[tag=DetectTeleporterDest,limit=1] UUID1 if score @s UUID2 = @e[tag=DetectTeleporterDest,limit=1] UUID2 if score @s UUID3 = @e[tag=DetectTeleporterDest,limit=1] UUID3 run tag @s add DetectTelepPlayer

## Teleport player
execute at @p[tag=DetectTelepPlayer] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0
execute at @p[tag=DetectTelepPlayer] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0 1000 normal @a

## Teleport
tp @p[tag=DetectTelepPlayer] @s
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0

## Remove forceload
forceload remove ~ ~

## Kill area_effect_cloud
kill @s

## Message
tellraw @p[tag=DetectTelepPlayer] ["",{"text":"[テレポーター] テレポートしました。","color":"green"}]

## Remove a tag
tag @p[tag=DetectTelepPlayer] remove DetectTelepPlayer