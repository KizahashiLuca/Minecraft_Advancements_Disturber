#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set square root
scoreboard players operation @s SquareRootX += @s SquareRootI
scoreboard players add @s Distance 1
scoreboard players add @s SquareRootI 2
execute if score @s BannerDistance > @s SquareRootX run function mad:system/ongame/transmitter_player/square_root