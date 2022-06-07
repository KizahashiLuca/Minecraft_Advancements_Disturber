#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar012 [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar012 players @s
bossbar set minecraft:bossbar012 name [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar012 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar012 value run scoreboard players get @s Second