#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every tick
scoreboard players remove #mad Tick 1
execute if score #mad Tick matches -1 run scoreboard players set #mad Tick 19

## Calculate time every second
execute if score #mad Tick matches 0 run function mad:system/pre_preparation/second