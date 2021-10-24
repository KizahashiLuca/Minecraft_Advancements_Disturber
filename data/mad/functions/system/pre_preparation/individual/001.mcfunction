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
bossbar add minecraft:bossbar001 [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar001 players @s
bossbar set minecraft:bossbar001 name [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar001 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar001 value run scoreboard players get @s Second