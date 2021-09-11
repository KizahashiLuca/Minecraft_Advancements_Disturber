#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute as @a[tag=Participant] run tp @s @e[type=minecraft:area_effect_cloud,tag=PausePosition,sort=nearest,limit=1]