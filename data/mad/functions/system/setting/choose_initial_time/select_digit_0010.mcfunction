#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad TimeLimit 10
execute if score #mad TimeLimit matches 1000.. run scoreboard players remove #mad TimeLimit 1000
function mad:system/setting/choose_initial_time/change_to