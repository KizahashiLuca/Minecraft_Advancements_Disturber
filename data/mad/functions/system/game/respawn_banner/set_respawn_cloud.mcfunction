#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set cloud
execute at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

## Remove a tag
tag @s remove MAD_NotSetCloud