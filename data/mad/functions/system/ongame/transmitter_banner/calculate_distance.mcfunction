#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
execute store result score @s TransmitterPosX align x run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,tag=DetectTransmitter,sort=nearest,limit=1] Pos[0] 1
execute store result score @s TransmitterPosY align y run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,tag=DetectTransmitter,sort=nearest,limit=1] Pos[1] 1
execute store result score @s TransmitterPosZ align z run data get entity @e[type=minecraft:armor_stand,tag=RespawnBanner,tag=DetectTransmitter,sort=nearest,limit=1] Pos[2] 1

## Calculate
scoreboard players set @s BannerDistance 0
scoreboard players operation @s TransmitterPosX -= @s PosX
scoreboard players operation @s TransmitterPosY -= @s PosY
scoreboard players operation @s TransmitterPosZ -= @s PosZ
scoreboard players operation @s TransmitterPosX *= @s TransmitterPosX
scoreboard players operation @s TransmitterPosY *= @s TransmitterPosY
scoreboard players operation @s TransmitterPosZ *= @s TransmitterPosZ
scoreboard players operation @s BannerDistance += @s TransmitterPosX
scoreboard players operation @s BannerDistance += @s TransmitterPosY
scoreboard players operation @s BannerDistance += @s TransmitterPosZ

scoreboard players set @s SquareRootI 1
scoreboard players set @s SquareRootX 0
scoreboard players set @s Distance 0
execute if score @s BannerDistance > @s SquareRootX run function mad:system/ongame/transmitter_banner/square_root

## Tell message
tellraw @s ["",{"text":"[発 信 機] 仲間のリスポーンバナーが ","color":"green"},{"score":{"name":"@s","objective":"BannerDistance"},"color":"green"},{"text":"m 先にあります。","color":"green"}]
