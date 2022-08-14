#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset advancements
advancement revoke @a only mad:system/item/mobile_respawn_beacon/take_bedrock

## Give mobile respawn beacon
loot spawn ~ ~ ~ loot mad:system/game/minecart/items/mobile_respawn_beacon

## Clear bedrock
execute store result score @s MobileBeaconTmp run data get entity @s Item.Count
scoreboard players remove @s MobileBeaconTmp 1
execute store result entity @s[predicate=mad:system/item/mobile_respawn_beacon/summon_item/ge_1] Item.Count int 1 run scoreboard players get @s MobileBeaconTmp
kill @s[predicate=mad:system/item/mobile_respawn_beacon/summon_item/le_0]

## loop
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/summon_item/ge_1] run function mad:system/item/mobile_respawn_beacon/summon_item