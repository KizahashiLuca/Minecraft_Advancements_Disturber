#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if predicate mad:gamerules/world_border/0600 run function mad:system/wait/set_world_border/0600
execute if predicate mad:gamerules/world_border/0700 run function mad:system/wait/set_world_border/0700
execute if predicate mad:gamerules/world_border/0800 run function mad:system/wait/set_world_border/0800
execute if predicate mad:gamerules/world_border/0900 run function mad:system/wait/set_world_border/0900
execute if predicate mad:gamerules/world_border/1000 run function mad:system/wait/set_world_border/1000