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
advancement revoke @s only mad:system/item/mobile_respawn_beacon/take_bedrock

## Clear inventory
clear @s minecraft:bedrock 1

## Give mobile respawn beacon
loot give @s loot mad:system/game/minecart/items/mobile_respawn_beacon