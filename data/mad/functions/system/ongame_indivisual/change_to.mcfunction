#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Set gamemode
gamemode survival @a[team=Participant]
execute if score #mad Difficulty matches 1 run difficulty easy
execute if score #mad Difficulty matches 2 run difficulty normal
execute if score #mad Difficulty matches 3 run difficulty hard

## Clear inventory
clear @a[team=Participant]
effect clear @a[team=Participant]

## Give items
give @a[team=Participant] minecraft:stone_sword
give @a[team=Participant] minecraft:stone_axe
give @a[team=Participant] minecraft:stone_shovel

## Minecart
scoreboard players set #mad SecondSummon 100
summon minecraft:area_effect_cloud ~ 140 ~ {Tags:["Minecart"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart,tag=!Teleported] run function mad:system/ongame_indivisual/minecart/teleport_minecart
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a ["",{"text":"[物資投下] 物資が","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":"秒後に ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されます。","color":"green"}]

## Set scoreboards
scoreboard players set #mad NumDead 0
scoreboard players set @a[team=Participant] Phase 21

## Change phase
scoreboard players set #mad Phase 21