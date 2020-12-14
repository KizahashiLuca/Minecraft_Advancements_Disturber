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
scoreboard players operation #mad RandomAnswer %= #mad 100

tag @p[tag=Participant,scores={Phase=21,Death=0},distance=..2] add GiveTimeRandomly
execute if entity @p[tag=GiveTimeRandomly,team=TeamA] run function mad:system/ongame_team/minecart/bonus_time/team_a
execute if entity @p[tag=GiveTimeRandomly,team=TeamB] run function mad:system/ongame_team/minecart/bonus_time/team_b
execute if entity @p[tag=GiveTimeRandomly,team=TeamC] run function mad:system/ongame_team/minecart/bonus_time/team_c
execute if entity @p[tag=GiveTimeRandomly,team=TeamD] run function mad:system/ongame_team/minecart/bonus_time/team_d
execute if entity @p[tag=GiveTimeRandomly,team=TeamE] run function mad:system/ongame_team/minecart/bonus_time/team_e
tag @a remove GiveTimeRandomly

## next summon decided
scoreboard players operation #mad SecondSummon = #mad SummonInterval
summon minecraft:area_effect_cloud ~ 160 ~ {Tags:["Minecart"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart,tag=!Teleported] run function mad:system/ongame_team/minecart/teleport_minecart
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a[gamemode=survival] ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されます。","color":"green"}]
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a[gamemode=!survival] ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されます。","color":"green"}]
scoreboard players operation #mad SecondSummon += #mad Second