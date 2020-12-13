#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set position
execute as @a store result score @s PosX run data get entity @s Pos[0] 
execute as @a store result score @s PosZ run data get entity @s Pos[2] 