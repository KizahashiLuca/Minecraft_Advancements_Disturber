#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set square root
scoreboard players operation @s SquareRootX += @s SquareRootI
scoreboard players add @s Distance 1
scoreboard players add @s SquareRootI 2
execute if score @s BannerDistance > @s SquareRootX run function mad:system/ongame/transmitter/transmit_beacon/square_root