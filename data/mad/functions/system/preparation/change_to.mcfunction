#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Send title messages
title @a title ["",{"text":"降下開始","color":"white"}]

## Send setting messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft","color":"red","bold":true}]
tellraw @a ["",{"text":"  Advancements","color":"red","bold":true}]
tellraw @a ["",{"text":"   Disturber β-1.2.1","color":"red","bold":true}]
tellraw @a ["",{"text":"  企画 : ","color":"green","bold":true},{"text":"ぽたーじゅ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @potage00"},"clickEvent":{"action":"open_url","value":"http://twitter.com/potage00"}}]
tellraw @a ["",{"text":"  制作 : ","color":"green","bold":true},{"text":"KizahashiLuca","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @KizahashiLuca"},"clickEvent":{"action":"open_url","value":"http://twitter.com/KizahashiLuca"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  降下を開始します。","color":"white"}]
execute if score #mad IsTeam matches 1 run function mad:system/preparation/tell_member
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

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