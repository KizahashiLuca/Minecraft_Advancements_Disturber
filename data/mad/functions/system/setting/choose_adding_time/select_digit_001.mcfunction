#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Add 1secs
scoreboard players add #mad AddingTime 1
execute if score #mad AddingTime matches 1000.. run scoreboard players remove #mad AddingTime 1000
function mad:system/setting/choose_adding_time/change_to