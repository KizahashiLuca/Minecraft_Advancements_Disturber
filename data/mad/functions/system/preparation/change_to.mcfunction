#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Send title messages
title @a title ["",{"text":"降下開始","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  降下を開始します。","color":"white"}]
execute if score #mad IsTeam matches 1 run function mad:system/preparation/tell_member
function mad:system/finish/message_common_end

## Teleport
execute if score #mad IsTeam matches 0 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/preparation/random_teleport_individual
execute if score #mad IsTeam matches 1 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/preparation/random_teleport_team
execute as @a[tag=Participant] at @s run tp @s ~ 160 ~

## Set time
time set noon

## Set scoreboards
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0

## Change phase
scoreboard players set #mad Phase 20