#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## explode minecart
playsound minecraft:entity.firework_rocket.twinkle ambient @a
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
kill @s

## give time randomly
scoreboard players set #mad RandomCount 10
function mad:system/random_generator/randomizing
scoreboard players operation #mad RandomAnswer %= #mad 2

## next summon decided
scoreboard players set #mad SecondSummon 100
summon minecraft:area_effect_cloud ~ 140 ~ {Tags:["Minecart"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart,tag=!Teleported] run function mad:system/ongame/minecart/teleport_minecart
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 140, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されます。","color":"green"}]
scoreboard players operation #mad SecondSummon += #mad Second