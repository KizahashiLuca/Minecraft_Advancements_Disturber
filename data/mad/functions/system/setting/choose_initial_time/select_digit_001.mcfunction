#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add 1secs
scoreboard players add #mad TimeLimit 1
execute if score #mad TimeLimit matches 1000.. run scoreboard players remove #mad TimeLimit 1000
function mad:system/setting/choose_initial_time/change_to