#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Scoreboard
execute store result score @s BannerPosX run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamD,sort=nearest,limit=1] Pos[0] 1
execute store result score @s BannerPosY run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamD,sort=nearest,limit=1] Pos[1] 1
execute store result score @s BannerPosZ run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamD,sort=nearest,limit=1] Pos[2] 1

## Calculate
scoreboard players set @s BannerDistance 0
scoreboard players operation @s BannerPosX -= @s PosX
scoreboard players operation @s BannerPosY -= @s PosY
scoreboard players operation @s BannerPosZ -= @s PosZ
scoreboard players operation @s BannerPosX *= @s BannerPosX
scoreboard players operation @s BannerPosY *= @s BannerPosY
scoreboard players operation @s BannerPosZ *= @s BannerPosZ
scoreboard players operation @s BannerDistance += @s BannerPosX
scoreboard players operation @s BannerDistance += @s BannerPosY
scoreboard players operation @s BannerDistance += @s BannerPosZ

scoreboard players set @s SquareRootI 1
scoreboard players set @s SquareRootX 0
scoreboard players set @s Distance 0
execute if score @s BannerDistance > @s SquareRootX run function mad:system/ongame/position/square_root

## Draw position - actionbar
title @s actionbar ["",{"text":"現在の座標 : ( ","color":"black"},{"score": {"name":"@s","objective": "PosX"},"color":"black"},{"text":", ","color":"black"},{"score": {"name":"@s","objective": "PosY"},"color":"black"},{"text":", ","color":"black"},{"score": {"name":"@s","objective": "PosZ"},"color":"black"},{"text":")  -  バナー距離 約 ","color":"black"},{"score": {"name":"@s","objective": "Distance"},"color":"black"},{"text":"m","color":"black"}]