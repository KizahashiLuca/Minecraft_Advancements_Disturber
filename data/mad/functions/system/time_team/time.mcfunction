#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every tick
execute if score #mad Tick matches 0 run scoreboard players set @a[tag=Leader] Tick 20
scoreboard players remove @a[tag=Leader] Tick 1

## Calculate time every second
execute if score #mad Tick matches 0 as @a[tag=Leader] run function mad:system/time_team/second