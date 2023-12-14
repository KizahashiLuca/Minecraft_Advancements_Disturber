#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set sidebar configuration
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat
scoreboard objectives modify Sidebar displayautoupdate true
scoreboard objectives setdisplay sidebar.team.red SidebarA
scoreboard objectives modify SidebarA numberformat
scoreboard objectives modify SidebarA displayautoupdate true
scoreboard objectives setdisplay sidebar.team.blue SidebarB
scoreboard objectives modify SidebarB numberformat
scoreboard objectives modify SidebarB displayautoupdate true
scoreboard objectives setdisplay sidebar.team.yellow SidebarC
scoreboard objectives modify SidebarC numberformat
scoreboard objectives modify SidebarC displayautoupdate true
scoreboard objectives setdisplay sidebar.team.green SidebarD
scoreboard objectives modify SidebarD numberformat
scoreboard objectives modify SidebarD displayautoupdate true

## Set scoreboard
scoreboard players reset 既に投下済み
scoreboard players operation 投下まであと: Sidebar = @s Second
scoreboard players set X: Sidebar -1
scoreboard players set Z: Sidebar -2
scoreboard players operation 投下まであと: SidebarA = @s Second
scoreboard players set X: SidebarA -1
scoreboard players set Z: SidebarA -2
scoreboard players operation 投下まであと: SidebarB = @s Second
scoreboard players set X: SidebarB -1
scoreboard players set Z: SidebarB -2
scoreboard players operation 投下まであと: SidebarC = @s Second
scoreboard players set X: SidebarC -1
scoreboard players set Z: SidebarC -2
scoreboard players operation 投下まであと: SidebarD = @s Second
scoreboard players set X: SidebarD -1
scoreboard players set Z: SidebarD -2

## Modify storage
execute store result storage mad: minecart.x int 1.0 run scoreboard players get @s PosX
execute store result storage mad: minecart.z int 1.0 run scoreboard players get @s PosZ

## Set display
function mad:system/game/minecart/set_sidebar/set_coordinate with storage mad: minecart