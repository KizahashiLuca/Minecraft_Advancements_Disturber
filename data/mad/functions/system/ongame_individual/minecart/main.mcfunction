#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect landing
execute if entity @e[type=minecraft:area_effect_cloud,tag=Minecart] run function mad:system/ongame_individual/minecart/detect_minecart_landed

## Detect minecart
execute if entity @p[team=Participant,scores={Phase=21,Death=0},distance=..2] run function mad:system/ongame_individual/minecart/explode_minecart
