#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Calculate tan theta
scoreboard players operation @s PosXDiff = @p[tag=TransmitPlayer] PosX
scoreboard players operation @s PosZDiff = @p[tag=TransmitPlayer] PosZ
scoreboard players operation @s PosXDiff -= @s PosX
scoreboard players operation @s PosZDiff -= @s PosZ

scoreboard players operation @s TanTheta = @s PosZDiff
scoreboard players operation @s TanTheta *= #mad 10000
scoreboard players operation @s TanTheta /= @s PosXDiff