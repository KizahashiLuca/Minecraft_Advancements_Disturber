#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Owner
tag @s add DetectRespawnBanner
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["DetectBannerOwner"]}
execute as @a[predicate=mad:ongame/player/not_set_respawn_banner] run function mad:system/ongame/respawn_banner/detect_banner_owner
kill @e[type=minecraft:item,tag=DetectBannerOwner]

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south] destroy
execute at @s align x align z run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["RespawnBanner","NotSetCloud"]}
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamA"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:red_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamB"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:blue_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamC"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:yellow_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamD"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:green_banner
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamE"]}}}] run item replace block ~ ~ ~ container.13 with minecraft:purple_banner

## Set lodestone
# execute at @s align x align z unless block ~-0.5 0 ~0.5 minecraft:lodestone run setblock ~-1 0 ~ minecraft:bedrock
# execute at @s align x align z unless block ~1.5 0 ~0.5 minecraft:lodestone run setblock ~1 0 ~ minecraft:bedrock
# execute at @s align x align z unless block ~0.5 0 ~-0.5 minecraft:lodestone run setblock ~ 0 ~-1 minecraft:bedrock
# execute at @s align x align z unless block ~0.5 0 ~1.5 minecraft:lodestone run setblock ~ 0 ~1 minecraft:bedrock
# execute at @s align x align z run setblock ~0.5 1 ~0.5 minecraft:bedrock
# execute at @s align x align z run setblock ~0.5 0 ~0.5 minecraft:lodestone

## Set scoreboard
scoreboard players set @a[tag=DetectedBannerOwner] SetRespawnBanner 1
execute at @s[predicate=mad:ongame/dimension/overworld] run scoreboard players set @a[tag=DetectedBannerOwner] BannerDimension 1
execute at @s[predicate=mad:ongame/dimension/the_nether] run scoreboard players set @a[tag=DetectedBannerOwner] BannerDimension 2
execute at @s[predicate=mad:ongame/dimension/the_end] run scoreboard players set @a[tag=DetectedBannerOwner] BannerDimension 3
execute at @s align x align z store result score @a[tag=DetectedBannerOwner] BannerPosX run data get entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] Pos[0]
execute at @s align x align z store result score @a[tag=DetectedBannerOwner] BannerPosY run data get entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] Pos[1]
execute at @s align x align z store result score @a[tag=DetectedBannerOwner] BannerPosZ run data get entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] Pos[2]

## Message
execute as @a[tag=DetectedBannerOwner,team=TeamA] run function mad:system/ongame/respawn_banner/team/team_a
execute as @a[tag=DetectedBannerOwner,team=TeamB] run function mad:system/ongame/respawn_banner/team/team_b
execute as @a[tag=DetectedBannerOwner,team=TeamC] run function mad:system/ongame/respawn_banner/team/team_c
execute as @a[tag=DetectedBannerOwner,team=TeamD] run function mad:system/ongame/respawn_banner/team/team_d
execute as @a[tag=DetectedBannerOwner,team=TeamE] run function mad:system/ongame/respawn_banner/team/team_e

## Remove a tag
tag @a remove DetectedBannerOwner

## Join team
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