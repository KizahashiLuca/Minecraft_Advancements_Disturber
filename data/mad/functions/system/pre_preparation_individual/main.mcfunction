#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Time system
function mad:system/pre_preparation_individual/tick

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation_individual/change_to