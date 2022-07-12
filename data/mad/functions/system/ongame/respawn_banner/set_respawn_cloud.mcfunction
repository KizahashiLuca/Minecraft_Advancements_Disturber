#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set cloud
execute if score #mad RespawnBannerTime matches 0 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute if score #mad RespawnBannerTime matches 30 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:596}
execute if score #mad RespawnBannerTime matches 60 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1196}
execute if score #mad RespawnBannerTime matches 90 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1796}
execute if score #mad RespawnBannerTime matches 120 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2396}
execute if score #mad RespawnBannerTime matches 150 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2996}
execute if score #mad RespawnBannerTime matches 180 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:3596}
execute if score #mad RespawnBannerTime matches 210 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4196}
execute if score #mad RespawnBannerTime matches 240 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4796}
execute if score #mad RespawnBannerTime matches 270 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:5396}
execute if score #mad RespawnBannerTime matches 300 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:5996}

## Remove a tag
tag @s remove NotSetCloud