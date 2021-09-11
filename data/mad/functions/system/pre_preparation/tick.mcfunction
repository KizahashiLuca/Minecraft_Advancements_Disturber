#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every tick
scoreboard players remove #mad Tick 1
execute if score #mad Tick matches -1 run scoreboard players set #mad Tick 19

## Calculate time every second
execute if score #mad Tick matches 0 run function mad:system/pre_preparation/second