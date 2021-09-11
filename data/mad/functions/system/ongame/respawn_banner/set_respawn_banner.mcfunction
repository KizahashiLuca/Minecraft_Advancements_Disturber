#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south]
execute at @s align x align z run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["RespawnBanner","NotSetCloud"]}
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamA"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:red_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamB"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:blue_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamC"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:yellow_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamD"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:green_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamE"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:purple_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamA"]}}}] run team join TeamA @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1]
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamB"]}}}] run team join TeamB @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1]
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamC"]}}}] run team join TeamC @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1]
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamD"]}}}] run team join TeamD @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1]
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamE"]}}}] run team join TeamE @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1]
data modify entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "RespawnBannerFromChest"

## Kill banner
kill @s