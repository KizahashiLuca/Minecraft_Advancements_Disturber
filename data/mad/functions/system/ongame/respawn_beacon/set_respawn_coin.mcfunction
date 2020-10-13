#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set armor stand
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["RespawnCoinByDead"]}}},tag=!SetArmorStand] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["NotSetPlayer"],CustomName:'{"color":"white","text":"リスポーンコイン"}',CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Duration:100000}

## Kill respawn coin of player's death loot table
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["RespawnCoinByDead"]}}}]

execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["RespawnCoinByAreaEffectCloud"]}}},nbt=!{Item:{tag:{Tags:["RespawnCoinByDead"]}}}] 

## Set scores to armor stand
execute as @e[type=minecraft:armor_stand,nbt={Tags:["NotSetPlayer"],CustomName:'{"color":"white","text":"リスポーンコイン"}',CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:4144703,Invisible:1b,HandItems:[{},{}]},limit=1,sort=nearest] run function mad:system/ongame/respawn_beacon/set_player

## Set data nbts to respawn coin in armor stand
data modify entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"color":"white","text":"リスポーンコイン"}',CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:4144703,Invisible:1b},limit=1,sort=nearest] HandItems[0].tag.Tags set value ["RespawnCoinByArmorStand"]

## Kill armor stand not have respawn coin
kill @e[type=minecraft:armor_stand,nbt={CustomName:'{"color":"white","text":"リスポーンコイン"}',CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:4144703,Invisible:1b},nbt=!{HandItems:[{id:"minecraft:structure_void",Count:1b,tag:{Tags:["RespawnCoinByArmorStand"]}},{}]}]

## 
execute as @a[scores={Phase=21,Death=0}] run function mad:system/ongame/respawn_beacon/detect_player