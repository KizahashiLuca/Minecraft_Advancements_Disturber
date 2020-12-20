#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Detect landing
execute if entity @e[type=minecraft:area_effect_cloud,tag=Minecart] run function mad:system/ongame_team/minecart/detect_minecart_landed

## Detect minecart
execute if entity @p[tag=Participant,scores={Phase=21,Death=0},distance=..2] run function mad:system/ongame_team/minecart/explode_minecart
