#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world border & cloud
worldborder center ~ ~
execute if predicate mad:gamerules/world_border/0100 run function mad:system/wait/set_world_border/0100
execute if predicate mad:gamerules/world_border/0200 run function mad:system/wait/set_world_border/0200
execute if predicate mad:gamerules/world_border/0300 run function mad:system/wait/set_world_border/0300
execute if predicate mad:gamerules/world_border/0400 run function mad:system/wait/set_world_border/0400
execute if predicate mad:gamerules/world_border/0500 run function mad:system/wait/set_world_border/0500