#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time every tick
scoreboard players remove #mad Tick 1
execute if score #mad Tick matches -1 run scoreboard players set #mad Tick 19

## Calculate time every second
execute if score #mad Tick matches 0 run function mad:system/pre_preparation_indivisual/second