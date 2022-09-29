#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if predicate mad:gamerules/world_border/1600 run function mad:system/wait/set_world_border/1600
execute if predicate mad:gamerules/world_border/1700 run function mad:system/wait/set_world_border/1700
execute if predicate mad:gamerules/world_border/1800 run function mad:system/wait/set_world_border/1800
execute if predicate mad:gamerules/world_border/1900 run function mad:system/wait/set_world_border/1900
execute if predicate mad:gamerules/world_border/2000 run function mad:system/wait/set_world_border/2000
execute if predicate mad:gamerules/world_border/unlimited run function mad:system/wait/set_world_border/unlimited