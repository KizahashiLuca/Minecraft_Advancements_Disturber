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

## Send messages
tellraw @a ["",{"translate":"[飛ばし矢] 5秒後にオーバーワールドのどこかに飛ばされます。","color":"green","bold":false,"italic":false}]

## Add a tag
tag @s add MAD_ArrowTeleportee

## Reset scoreboard
scoreboard players set @s ArrowTeleportTick 0
scoreboard players set @s ArrowTeleportPosX 0
scoreboard players set @s ArrowTeleportPosY 0
scoreboard players set @s ArrowTeleportPosZ 0