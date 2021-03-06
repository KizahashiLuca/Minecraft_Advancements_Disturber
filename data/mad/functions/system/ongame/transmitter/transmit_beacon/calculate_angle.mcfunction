#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Calculate tan theta
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,sort=nearest,limit=1] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,sort=nearest,limit=1] store result score @s PosZ align x run data get entity @s Pos[2] 1

scoreboard players operation @s PosXDiff = @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,sort=nearest,limit=1] PosX
scoreboard players operation @s PosZDiff = @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon,sort=nearest,limit=1] PosZ
scoreboard players operation @s PosXDiff -= @s PosX
scoreboard players operation @s PosZDiff -= @s PosZ

scoreboard players operation @s TanTheta = @s PosZDiff
scoreboard players operation @s TanTheta *= #mad 10000
scoreboard players operation @s TanTheta /= @s PosXDiff