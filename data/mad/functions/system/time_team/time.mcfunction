#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time every tick
execute if score #mad Tick matches 0 run scoreboard players set @a[tag=Leader] Tick 20
scoreboard players remove @a[tag=Leader] Tick 1

## Calculate time every second
execute if score #mad Tick matches 0 as @a[tag=Leader] run function mad:system/time_team/second