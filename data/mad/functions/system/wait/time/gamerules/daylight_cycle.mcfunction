#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 天候サイクル:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat

## Daylight cycle
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players set 昼夜サイクル: Sidebar 0
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players display numberformat 昼夜サイクル: Sidebar fixed [{"text":"なし","color":"red"}]
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players set 昼夜サイクル: Sidebar 1
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players display numberformat 昼夜サイクル: Sidebar fixed [{"text":"あり","color":"green"}]