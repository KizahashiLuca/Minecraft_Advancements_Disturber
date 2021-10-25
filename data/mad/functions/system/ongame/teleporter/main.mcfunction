#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect thrown teleporter 
execute as @s[predicate=mad:ongame/teleporter/use_first] at @s if entity @e[predicate=mad:ongame/teleporter/dropped_lantern,sort=nearest,distance=..1] run function mad:system/ongame/teleporter/use_first
execute as @s[predicate=mad:ongame/teleporter/use_second] at @s if entity @e[predicate=mad:ongame/teleporter/dropped_soul_lantern_later,sort=nearest,distance=..1] run function mad:system/ongame/teleporter/use_second

## Loop
execute as @s[predicate=mad:ongame/teleporter/main] at @s run function mad:system/ongame/teleporter/main