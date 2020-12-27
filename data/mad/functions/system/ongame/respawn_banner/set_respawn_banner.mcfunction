#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south]
execute at @s align x align z run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["RespawnBanner"]}
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:red_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:blue_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:yellow_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:green_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:purple_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:purple_banner
data modify entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "RespawnBannerFromChest"

## Set cloud
execute if score #mad RespawnTime matches 0 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute if score #mad RespawnTime matches 30 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:600}
execute if score #mad RespawnTime matches 60 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1200}
execute if score #mad RespawnTime matches 90 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:1800}
execute if score #mad RespawnTime matches 120 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2400}
execute if score #mad RespawnTime matches 150 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:3000}
execute if score #mad RespawnTime matches 180 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:3600}
execute if score #mad RespawnTime matches 210 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4200}
execute if score #mad RespawnTime matches 240 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:4800}
execute if score #mad RespawnTime matches 270 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:5400}
execute if score #mad RespawnTime matches 300 at @s align x align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["RespawnBanner"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:6000}

## Kill banner
kill @s