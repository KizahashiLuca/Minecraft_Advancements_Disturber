#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Detect landing
execute if entity @e[type=minecraft:area_effect_cloud,tag=Minecart] run function mad:system/ongame/minecart/detect_minecart_landed

## Detect minecart
execute as @s[nbt={Items:[]}] run function mad:system/ongame/minecart/explode_minecart
execute as @s[nbt={Items:[{}]}] run function mad:system/ongame/minecart/explode_minecart
execute if entity @p[predicate=mad:ongame/player/participant_alive,distance=..2] run function mad:system/ongame/minecart/explode_minecart