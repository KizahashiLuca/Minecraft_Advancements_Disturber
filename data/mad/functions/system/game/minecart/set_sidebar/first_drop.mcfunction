#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
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

## Set display
scoreboard players display numberformat X: Sidebar fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: Sidebar fixed [{"text":"?","color":"green"}]