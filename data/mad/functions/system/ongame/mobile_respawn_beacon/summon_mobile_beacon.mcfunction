#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset advancements
advancement revoke @a only mad:system/ongame_team/take_bedrock

## Give mobile respawn beacon
loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/mobile_respawn_beacon

## Clear bedrock
execute store result score @s MobileBeaconTmp run data get entity @s Item.Count
scoreboard players remove @s MobileBeaconTmp 1
execute store result entity @s[scores={MobileBeaconTmp=1..}] Item.Count int 1 run scoreboard players get @s MobileBeaconTmp
kill @s[scores={MobileBeaconTmp=..0}]

## loop
execute as @s[scores={MobileBeaconTmp=1..}] run function mad:system/ongame/mobile_respawn_beacon/summon_mobile_beacon