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
execute as @a store result score @s PosY run data get entity @s Pos[1] 
execute as @a store result score @s PosZ run data get entity @s Pos[2] 

## Draw position - actionbar
execute as @a[tag=Participant] run title @s actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")"}]