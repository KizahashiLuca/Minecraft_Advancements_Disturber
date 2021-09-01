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
scoreboard players add #mad Tick 1
execute if score #mad Tick matches 20 run scoreboard players set #mad Tick 0

## Calculate time every second
execute if score #mad Tick matches 0 run function mad:system/time_individual/general_second