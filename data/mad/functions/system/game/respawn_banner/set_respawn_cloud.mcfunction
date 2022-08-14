#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set cloud
execute if predicate mad:gamerules/team_match/respawn_banner_time/unlimited at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute if predicate mad:gamerules/team_match/respawn_banner_time/0s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:0}
execute if predicate mad:gamerules/team_match/respawn_banner_time/60s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:1196}
execute if predicate mad:gamerules/team_match/respawn_banner_time/120s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2396}
execute if predicate mad:gamerules/team_match/respawn_banner_time/180s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:3596}
execute if predicate mad:gamerules/team_match/respawn_banner_time/240s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:4796}
execute if predicate mad:gamerules/team_match/respawn_banner_time/300s at @s align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MAD_RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:5996}

## Remove a tag
tag @s remove MAD_NotSetCloud