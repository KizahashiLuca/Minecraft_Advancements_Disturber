#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1secs
scoreboard players add #mad TimeLimit 1
execute if score #mad TimeLimit matches 1000.. run scoreboard players remove #mad TimeLimit 1000
function mad:system/setting/choose_initial_time/change_to