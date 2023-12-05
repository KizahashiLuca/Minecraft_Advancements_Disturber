#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset ワールドボーダー
scoreboard players reset （ブロック四方）:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank

## Weather cycle
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players set 天候サイクル: Sidebar 0
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players display numberformat 天候サイクル: Sidebar fixed [{"text":"なし","color":"red"}]
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players set 天候サイクル: Sidebar 1
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players display numberformat 天候サイクル: Sidebar fixed [{"text":"あり","color":"green"}]