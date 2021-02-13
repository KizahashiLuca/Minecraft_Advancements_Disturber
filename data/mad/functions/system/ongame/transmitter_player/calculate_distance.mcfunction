#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players operation @s TransmitterPosX = @p[tag=TransmitPlayer] PosX
scoreboard players operation @s TransmitterPosY = @p[tag=TransmitPlayer] PosY
scoreboard players operation @s TransmitterPosZ = @p[tag=TransmitPlayer] PosZ

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
execute if score @s BannerDistance > @s SquareRootX run function mad:system/ongame/transmitter_player/square_root
