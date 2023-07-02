#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send gamerules messages
tellraw @a[predicate=mad:gamerules/weather_cycle/false] ["",{"translate":"[天候サイクル] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/weather_cycle/true] ["",{"translate":"[天候サイクル] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=mad:gamerules/daylight_cycle/false] ["",{"translate":"[昼夜サイクル] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/daylight_cycle/true] ["",{"translate":"[昼夜サイクル] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=mad:gamerules/difficulty/peaceful] ["",{"translate":"[難易度] %s","with":[{"text":"ピースフル","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/difficulty/easy] ["",{"translate":"[難易度] %s","with":[{"text":"イージー","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/difficulty/normal] ["",{"translate":"[難易度] %s","with":[{"text":"ノーマル","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/difficulty/hard] ["",{"translate":"[難易度] %s","with":[{"text":"ハード","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/difficulty/hardcore] ["",{"translate":"[難易度] %s","with":[{"text":"ハードコア","bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to