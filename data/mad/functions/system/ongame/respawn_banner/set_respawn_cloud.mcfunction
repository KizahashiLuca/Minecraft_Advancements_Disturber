#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set cloud
execute if score #mad RespawnTime matches 0 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute if score #mad RespawnTime matches 30 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:596}
execute if score #mad RespawnTime matches 60 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1196}
execute if score #mad RespawnTime matches 90 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1796}
execute if score #mad RespawnTime matches 120 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2396}
execute if score #mad RespawnTime matches 150 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2996}
execute if score #mad RespawnTime matches 180 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:3596}
execute if score #mad RespawnTime matches 210 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4196}
execute if score #mad RespawnTime matches 240 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4796}
execute if score #mad RespawnTime matches 270 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:5396}
execute if score #mad RespawnTime matches 300 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:5996}

## Remove a tag
tag @s remove NotSetCloud