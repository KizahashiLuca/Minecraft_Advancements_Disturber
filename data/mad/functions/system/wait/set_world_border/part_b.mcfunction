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
execute if predicate mad:gamerules/world_border/0600 run function mad:system/wait/set_world_border/0600
execute if predicate mad:gamerules/world_border/0700 run function mad:system/wait/set_world_border/0700
execute if predicate mad:gamerules/world_border/0800 run function mad:system/wait/set_world_border/0800
execute if predicate mad:gamerules/world_border/0900 run function mad:system/wait/set_world_border/0900
execute if predicate mad:gamerules/world_border/1000 run function mad:system/wait/set_world_border/1000