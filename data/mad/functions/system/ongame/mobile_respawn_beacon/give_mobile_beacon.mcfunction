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
advancement revoke @s only mad:system/ongame_team/take_bedrock

## Clear inventory
clear @s minecraft:bedrock 1

## Give mobile respawn beacon
loot give @s loot mad:ongame/chest_minecart_item/mobile_respawn_beacon