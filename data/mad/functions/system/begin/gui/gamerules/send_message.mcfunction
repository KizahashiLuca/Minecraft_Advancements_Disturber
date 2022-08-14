#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send gamerules messages
tellraw @a[predicate=mad:gamerules/weather_cycle/false] ["",{"text":"[天候サイクル] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/weather_cycle/true] ["",{"text":"[天候サイクル] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/daylight_cycle/false] ["",{"text":"[昼夜サイクル] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/daylight_cycle/true] ["",{"text":"[昼夜サイクル] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/difficulty/peaceful] ["",{"text":"[難易度] ","color":"green"},{"text":"ピースフル","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/difficulty/easy] ["",{"text":"[難易度] ","color":"green"},{"text":"イージー","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/difficulty/normal] ["",{"text":"[難易度] ","color":"green"},{"text":"ノーマル","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/difficulty/hard] ["",{"text":"[難易度] ","color":"green"},{"text":"ハード","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/difficulty/hardcore] ["",{"text":"[難易度] ","color":"green"},{"text":"ハードコア","color":"green","bold":true}]

## Change to root
function mad:system/begin/gui/root/change_to