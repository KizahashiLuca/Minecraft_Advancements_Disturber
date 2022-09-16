#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if predicate mad:gamerules/world_border/0100 run function mad:system/wait/set_world_border/0100
execute if predicate mad:gamerules/world_border/0200 run function mad:system/wait/set_world_border/0200
execute if predicate mad:gamerules/world_border/0300 run function mad:system/wait/set_world_border/0300
execute if predicate mad:gamerules/world_border/0400 run function mad:system/wait/set_world_border/0400
execute if predicate mad:gamerules/world_border/0500 run function mad:system/wait/set_world_border/0500