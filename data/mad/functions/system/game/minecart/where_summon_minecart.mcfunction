#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Decide where to summon minecart
scoreboard players operation #mad SecondSummon = #mad SummonInterval
summon minecraft:marker ~ 320 ~ {Tags:["MAD_WhereSummonMinecart"],NoGravity:1b,Invulnerable:1b}
execute as @e[predicate=mad:system/game/minecart/where_summon_minecart] run function mad:system/game/minecart/teleport_minecart/main

==========ここから==============


execute as @e[type=minecraft:area_effect_cloud,tag=Minecart,tag=!Teleported] run function mad:system/ongame/minecart/teleport_minecart
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 320, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されます。","color":"green"}]

## Add a tag
tag @s add MAD_SetNext

## Remove a tag
tag @s remove MAD_NotSetNext