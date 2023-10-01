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
execute if predicate mad:gamerules/world_border/0100 run function mad:system/wait/set_world_border/0100
execute if predicate mad:gamerules/world_border/0200 run function mad:system/wait/set_world_border/0200
execute if predicate mad:gamerules/world_border/0300 run function mad:system/wait/set_world_border/0300
execute if predicate mad:gamerules/world_border/0400 run function mad:system/wait/set_world_border/0400
execute if predicate mad:gamerules/world_border/0500 run function mad:system/wait/set_world_border/0500