#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set sidebar configuration
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat
scoreboard objectives modify Sidebar displayautoupdate true

## Set scoreboard
scoreboard players reset 既に投下済み
scoreboard players operation 投下まであと: Sidebar = @s Second
scoreboard players set X: Sidebar -2147483647
scoreboard players set Z: Sidebar -2147483648

## Modify storage
execute store result storage mad: minecart.x int 1.0 run scoreboard players get @s PosX
execute store result storage mad: minecart.z int 1.0 run scoreboard players get @s PosZ

## Set display
function mad:system/game/minecart/set_sidebar/set_coordinate with storage mad: minecart