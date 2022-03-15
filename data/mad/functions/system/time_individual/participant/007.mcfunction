#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar007 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar007 value run scoreboard players get @s Second
bossbar set minecraft:bossbar007 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]