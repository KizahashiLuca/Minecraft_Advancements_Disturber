#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set position
execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosY run data get entity @s Pos[1]
execute store result score @s PosZ run data get entity @s Pos[2]

## Detect armor stand
execute if entity @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamC] run function mad:system/ongame/position/banner_exist/team_c
execute unless entity @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamC] run title @s actionbar ["",{"text":"現在の座標 : ( ","color":"light_purple"},{"score": {"name":"@s","objective": "PosX"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score": {"name":"@s","objective": "PosY"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score": {"name":"@s","objective": "PosZ"},"color":"light_purple"},{"text":")","color":"light_purple"}]