#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate tick
scoreboard players add @s ArrowTeleportTick 1

## Particle
execute at @s run particle minecraft:portal ~ ~2 ~ 0.1 0.1 0.1 5 10 normal @a

## Teleport
execute as @s[predicate=mad:system/item/teleport_arrow/teleport_tick] run function mad:system/item/teleport_arrow/teleport

## Send message
execute as @s[predicate=mad:system/item/teleport_arrow/message_tick] run function mad:system/item/teleport_arrow/send_message