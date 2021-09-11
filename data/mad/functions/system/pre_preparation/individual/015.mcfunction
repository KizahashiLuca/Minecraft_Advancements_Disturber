#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar015 [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar015 players @s
bossbar set minecraft:bossbar015 name [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar015 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar015 value run scoreboard players get @s Second