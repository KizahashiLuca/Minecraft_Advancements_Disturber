#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad TimeLimit 10
execute if score #mad TimeLimit matches 1000.. run scoreboard players remove #mad TimeLimit 1000
function mad:system/setting/choose_initial_time/change_to