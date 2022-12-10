#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar for settings
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #mad WaitTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #mad WaitTime
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar visible true