#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border & cloud
worldborder center ~ ~
execute if predicate mad:gamerules/world_border/1600 run function mad:system/wait/set_world_border/1600
execute if predicate mad:gamerules/world_border/1700 run function mad:system/wait/set_world_border/1700
execute if predicate mad:gamerules/world_border/1800 run function mad:system/wait/set_world_border/1800
execute if predicate mad:gamerules/world_border/1900 run function mad:system/wait/set_world_border/1900
execute if predicate mad:gamerules/world_border/2000 run function mad:system/wait/set_world_border/2000
execute if predicate mad:gamerules/world_border/unlimited run function mad:system/wait/set_world_border/unlimited