#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Add 100secs
scoreboard players add #mad AddingTime 100
execute if score #mad AddingTime matches 1000.. run scoreboard players remove #mad AddingTime 1000
function mad:system/setting/choose_adding_time/change_to