#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players operation @s ArrowTeleportPosX = @s PosX
scoreboard players operation @s ArrowTeleportPosY = @s PosY
scoreboard players operation @s ArrowTeleportPosZ = @s PosZ

## Send messages
tellraw @a ["",{"translate":"[どっか行け矢(仮)]  %s が ","with":[{"selector":"@s"}],"color":"green","bold":false,"italic":false},{"translate":"オーバーワールド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"ArrowTeleportPosX"}},{"score":{"name":"@s","objective":"ArrowTeleportPosY"}},{"score":{"name":"@s","objective":"ArrowTeleportPosZ"}}],"color":"green","bold":false,"italic":false},{"text":" に飛ばされました。","color":"green","bold":false,"italic":false}]

## Remove a tag
tag @s remove MAD_ArrowTeleportee

## Reset scoreboard
scoreboard players reset @s ArrowTeleportTick
scoreboard players reset @s ArrowTeleportPosX
scoreboard players reset @s ArrowTeleportPosY
scoreboard players reset @s ArrowTeleportPosZ