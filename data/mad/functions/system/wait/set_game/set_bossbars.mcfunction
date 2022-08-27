#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
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