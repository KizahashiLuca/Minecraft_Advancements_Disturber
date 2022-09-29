#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
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