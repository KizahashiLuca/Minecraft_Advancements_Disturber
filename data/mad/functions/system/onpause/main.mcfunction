#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute as @a[tag=Participant] run tp @s @e[type=minecraft:area_effect_cloud,tag=PausePosition,sort=nearest,limit=1]