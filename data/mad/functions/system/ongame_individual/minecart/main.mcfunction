#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect landing
execute if entity @e[type=minecraft:area_effect_cloud,tag=Minecart] run function mad:system/ongame_individual/minecart/detect_minecart_landed

## Detect minecart
execute if entity @p[team=Participant,scores={Phase=21,Death=0},distance=..2] run function mad:system/ongame_individual/minecart/explode_minecart
