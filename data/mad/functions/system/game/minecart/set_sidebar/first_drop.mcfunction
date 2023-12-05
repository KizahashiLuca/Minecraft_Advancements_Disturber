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
scoreboard objectives setdisplay sidebar.team.dark_purple SidebarE
scoreboard objectives modify SidebarE numberformat
scoreboard objectives modify SidebarE displayautoupdate true

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
scoreboard players operation 投下まであと: SidebarE = @s Second
scoreboard players set X: SidebarE -1
scoreboard players set Z: SidebarE -2

## Set display
scoreboard players display numberformat X: Sidebar fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: Sidebar fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat X: SidebarA fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: SidebarA fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat X: SidebarB fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: SidebarB fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat X: SidebarC fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: SidebarC fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat X: SidebarD fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: SidebarD fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat X: SidebarE fixed [{"text":"?","color":"green"}]
scoreboard players display numberformat Z: SidebarE fixed [{"text":"?","color":"green"}]