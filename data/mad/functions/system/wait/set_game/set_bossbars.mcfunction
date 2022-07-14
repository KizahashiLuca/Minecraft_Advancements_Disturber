#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar for settings
bossbar set mad:bossbar players @a
bossbar set mad:bossbar name ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
execute store result bossbar mad:bossbar max run scoreboard players get #mad WaitTime
execute store result bossbar mad:bossbar value run scoreboard players get #mad WaitTime
bossbar set mad:bossbar color white
bossbar set mad:bossbar style notched_10
bossbar set mad:bossbar visible true