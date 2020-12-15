#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set respawn structure
setblock ~ ~ ~ minecraft:chest[facing=south]
execute at @s align x align z run summon minecraft:villager ~0.5 ~1 ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,CanPickUpLoot:0b,NoAI:1b,CustomName:'{"text":"リスポーンバナー"}',Willing:0b,VillagerData:{level:5,profession:"minecraft:plains",type:"minecraft:none"},Tags:["RespawnStructure"]}
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:red_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:blue_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:yellow_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:green_banner
execute as @s[type=minecraft:item,nbt={Item:{id:"minecraft:purple_banner",tag:{Tags:["RespawnBannerByDead"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:purple_banner
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "RespawnBannerFromChest"

## Set cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RespawnBanner"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:10000000}

## Kill banner
kill @s