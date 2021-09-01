#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Grant advancements
advancement revoke @a everything
advancement grant @a until mad:potage00/adventure
advancement grant @a until mad:potage00/collect
advancement grant @a until mad:potage00/original

## Take recipes
recipe take @a *

## Set gamemode
gamemode survival @a[tag=Participant]
execute if score #mad Difficulty matches 1 run difficulty easy
execute if score #mad Difficulty matches 2 run difficulty normal
execute if score #mad Difficulty matches 3 run difficulty hard

## Clear inventory
clear @a[tag=Participant]
effect clear @a
effect give @a[tag=!Participant] minecraft:night_vision 1000000 1 true

## Give items
give @a[tag=Participant] minecraft:golden_pickaxe
give @a[tag=Participant] minecraft:golden_axe
give @a[tag=Participant] minecraft:golden_shovel

## Minecart
scoreboard players operation #mad SecondSummon = #mad SummonInterval
summon minecraft:area_effect_cloud ~ 160 ~ {Tags:["Minecart"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart,tag=!Teleported] run function mad:system/ongame/minecart/teleport_minecart
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されます。","color":"green"}]

## Set scoreboards
scoreboard players set @a TeleportMessage 0
scoreboard players enable @a TeleportMessage
execute if score #mad IsTeam matches 1 run scoreboard players operation #mad NumAlive = #mad TeamNumber
scoreboard players set #mad NumDead 0
scoreboard players set @a[tag=Participant] Phase 21

scoreboard players set @a Sneak 0

## Set minecart
execute if score #mad IsTeam matches 0 if score #mad WorldBorderEnd matches 0 run scoreboard players set #mad MinecartBranch 0
execute if score #mad IsTeam matches 1 if score #mad WorldBorderEnd matches 0 run scoreboard players set #mad MinecartBranch 1
execute if score #mad IsTeam matches 0 if score #mad WorldBorderEnd matches 1 run scoreboard players set #mad MinecartBranch 2
execute if score #mad IsTeam matches 1 if score #mad WorldBorderEnd matches 1 run scoreboard players set #mad MinecartBranch 3

## Set scoreboards for add-on
execute if score #mad Phase matches 20 run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 21