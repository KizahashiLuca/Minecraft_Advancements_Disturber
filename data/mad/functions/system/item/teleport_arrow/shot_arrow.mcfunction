#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset advancements
advancement revoke @s only mad:system/item/teleport_arrow/shot_arrow

## Add a tag
tag @s add MAD_ArrowTeleport

## Teleport
schedule function mad:system/item/teleport_arrow/teleport 5s