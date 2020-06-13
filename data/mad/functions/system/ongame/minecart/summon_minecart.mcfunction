#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Delete minecart
kill @s

## Summon minecart
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run summon minecraft:chest_minecart ~ 140 ~ {LootTable:"mad:chest_minecart",Tags:["Minecart"]}
execute as @s[tag=!Teleported] run function mad:system/ongame/minecart/teleport_minecart

## Send messages
execute store result score @s PosX align x run data get entity @s Pos[0] 1
execute store result score @s PosZ align z run data get entity @s Pos[2] 1
tellraw @a[gamemode=survival] ["",{"text":"[物資投下] 物資が","color":"green"},{"translate":"[%s, 140, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されました。","color":"green"}]
tellraw @a[gamemode=!survival] ["",{"text":"[物資投下] 物資が","color":"green"},{"translate":"[%s, 140, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]

## Set scoreboard
scoreboard players set #mad SummonMinecart 1