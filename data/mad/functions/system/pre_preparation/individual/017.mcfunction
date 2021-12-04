#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar017 [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar017 players @s
bossbar set minecraft:bossbar017 name [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar017 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar017 value run scoreboard players get @s Second