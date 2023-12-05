#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a[distance=..5] ["",{"text":"[モバイルリスポーンビーコン] リスポーンさせるプレイヤーがいません。","color":"green","bold":false,"italic":false}]

## Spawn item
loot spawn ~ ~ ~ loot mad:system/game/minecart/items/mobile_respawn_beacon

## Remove player
execute as @p[predicate=mad:system/item/mobile_respawn_beacon/set_respawn_player] run function mad:system/item/mobile_respawn_beacon/reset_respawn_player

## Fill block
fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air replace

## Kill banner
execute if entity @e[predicate=mad:system/item/mobile_respawn_beacon/kill_banner] run kill @e[predicate=mad:system/item/mobile_respawn_beacon/kill_banner,sort=nearest,limit=1]

## Kill cloud
kill @s