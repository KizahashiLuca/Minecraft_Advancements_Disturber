#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectRespawnBanner

## Execute a beacon
execute as @p[predicate=mad:system/common/respawn_beacon/set_respawn_player] run function mad:system/common/respawn_beacon/time/respawn_player

## Particle
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0.05 1000 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0
data modify block ~ ~-2 ~ Age set value 0L

## Set scoreboards
scoreboard players set @s Second 20
scoreboard players set @s Tick 0
scoreboard players reset @s[predicate=mad:player/team/a] SidebarA
scoreboard players reset @s[predicate=mad:player/team/b] SidebarB
scoreboard players reset @s[predicate=mad:player/team/c] SidebarC
scoreboard players reset @s[predicate=mad:player/team/d] SidebarD
scoreboard players reset @s[predicate=mad:player/team/e] SidebarE
execute unless entity @p[predicate=mad:player/dead/a] run scoreboard players reset スペース SidebarA
execute unless entity @p[predicate=mad:player/dead/a] run scoreboard players reset 【リスポーンバナー座標】 SidebarA
execute unless entity @p[predicate=mad:player/dead/b] run scoreboard players reset スペース SidebarB
execute unless entity @p[predicate=mad:player/dead/b] run scoreboard players reset 【リスポーンバナー座標】 SidebarB
execute unless entity @p[predicate=mad:player/dead/c] run scoreboard players reset スペース SidebarC
execute unless entity @p[predicate=mad:player/dead/c] run scoreboard players reset 【リスポーンバナー座標】 SidebarC
execute unless entity @p[predicate=mad:player/dead/d] run scoreboard players reset スペース SidebarD
execute unless entity @p[predicate=mad:player/dead/d] run scoreboard players reset 【リスポーンバナー座標】 SidebarD
execute unless entity @p[predicate=mad:player/dead/e] run scoreboard players reset スペース SidebarE
execute unless entity @p[predicate=mad:player/dead/e] run scoreboard players reset 【リスポーンバナー座標】 SidebarE

## Reset block
setblock ~ ~ ~ minecraft:air replace

## Reset data 
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Reset mobile respawn beacon
execute as @s[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure] run fill ~-1 ~-1 ~-1 ~1 ~0 ~1 minecraft:air replace
kill @s[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure]

## Remove a tag
tag @s remove MAD_SetRespawnBanner
tag @s remove MAD_DetectRespawnBanner