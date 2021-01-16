#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south]
execute at @s align x align z run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["RespawnBanner","NotSetCloud"]}
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamA"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:red_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamB"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:blue_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamC"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:yellow_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamD"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:green_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamE"]}}}] run replaceitem block ~ ~ ~ container.13 minecraft:purple_banner
data modify entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "RespawnBannerFromChest"

## Kill banner
kill @s