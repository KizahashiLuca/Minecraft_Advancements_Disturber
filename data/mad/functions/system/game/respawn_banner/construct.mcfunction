#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Owner
tag @s add MAD_DetectRespawnBanner
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["MAD_DetectBannerOwner"]}
execute as @a[predicate=mad:system/game/respawn_banner/not_set_player] run function mad:system/game/respawn_banner/detect_banner_owner
kill @e[predicate=mad:system/game/respawn_banner/detect_banner_owner_item]

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south] destroy
execute at @s align xz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["MAD_RespawnBanner","MAD_NotSetCloud","MAD_NotSetCustomName"]}

## Set scoreboard
scoreboard players set @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] SetRespawnBanner 1
execute at @s[predicate=mad:dimension/overworld] run scoreboard players set @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerDimension 1
execute at @s[predicate=mad:dimension/the_nether] run scoreboard players set @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerDimension 2
execute at @s[predicate=mad:dimension/the_end] run scoreboard players set @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerDimension 3
execute at @s align xz store result score @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerPosX run data get entity @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1] Pos[0]
execute at @s align xz store result score @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerPosY run data get entity @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1] Pos[1]
execute at @s align xz store result score @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] BannerPosZ run data get entity @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1] Pos[2]

## Set banner owner
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player] run function mad:system/game/respawn_banner/set_owner_uuid

## Message
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player/a] run function mad:system/game/respawn_banner/message/a
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player/b] run function mad:system/game/respawn_banner/message/b
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player/c] run function mad:system/game/respawn_banner/message/c
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player/d] run function mad:system/game/respawn_banner/message/d
execute as @a[predicate=mad:system/game/respawn_banner/detect_banner_owner_player/e] run function mad:system/game/respawn_banner/message/e

## Remove a tag
tag @a remove MAD_DetectedBannerOwner

## Branch team
execute as @s[predicate=mad:system/game/respawn_banner/by_dead/a] run function mad:system/game/respawn_banner/team/a
execute as @s[predicate=mad:system/game/respawn_banner/by_dead/b] run function mad:system/game/respawn_banner/team/b
execute as @s[predicate=mad:system/game/respawn_banner/by_dead/c] run function mad:system/game/respawn_banner/team/c
execute as @s[predicate=mad:system/game/respawn_banner/by_dead/d] run function mad:system/game/respawn_banner/team/d
execute as @s[predicate=mad:system/game/respawn_banner/by_dead/e] run function mad:system/game/respawn_banner/team/e

## Set banner name
data modify entity @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1] CustomName set from entity @s Item.tag.display.Name
tag @e[predicate=mad:armor_stand/respawn_banner/not_set_customname] remove MAD_NotSetCustomName
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "MAD_RespawnBannerFromChest"

## Kill banner
kill @s