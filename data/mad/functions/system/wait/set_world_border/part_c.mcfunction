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
execute if predicate mad:gamerules/world_border/1100 run function mad:system/wait/set_world_border/1100
execute if predicate mad:gamerules/world_border/1200 run function mad:system/wait/set_world_border/1200
execute if predicate mad:gamerules/world_border/1300 run function mad:system/wait/set_world_border/1300
execute if predicate mad:gamerules/world_border/1400 run function mad:system/wait/set_world_border/1400
execute if predicate mad:gamerules/world_border/1500 run function mad:system/wait/set_world_border/1500