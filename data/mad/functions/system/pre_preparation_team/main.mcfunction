#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Time system
function mad:system/pre_preparation_team/tick

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation_team/change_to